#!/usr/bin/env python3
"""Independent read-only APK regression check for the startup metadata digests.

Does not import any patch/build code. Writes only its report next to this file.
The absent fix1 artifact is reported as pending unless --require-fix is passed.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import re
import struct
import zipfile

ROOT = Path(__file__).resolve().parents[1]
ENGINE = "lib/arm64-v8a/libcocos2dcpp.so"
ORIGINAL_ENGINE_SHA256 = "72e42cb4925655ecfef98bf2dbf92a5ac05145eb005a531c96c11b927a46e6dc"
CONSTANTS = {"songlist": 0x56EF5B, "packlist": 0x58C15D, "unlocks": 0x58C17E}
# Include the instruction at 0x13db678, as well as the mismatch exit block.
ROUTINE_START, ROUTINE_END = 0x13DAFD0, 0x13DB67C
APKS = {
    "original": "arcaea.apk",
    "known_bad": "arcaea-offline-practice-arm64-test.apk",
    "fix1": "arcaea-offline-practice-arm64-fix1.apk",
}


def mapped_offset(engine: bytes, address: int, size: int) -> int:
    if engine[:6] != b"\x7fELF\x02\x01" or struct.unpack_from("<H", engine, 18)[0] != 183:
        raise ValueError("Expected a little-endian AArch64 ELF64 engine")
    phoff = struct.unpack_from("<Q", engine, 32)[0]
    phsize, phcount = struct.unpack_from("<HH", engine, 54)
    for index in range(phcount):
        kind, _, offset, virtual, _, filesz = struct.unpack_from("<IIQQQQ", engine, phoff + index * phsize)
        if kind == 1 and virtual <= address and address + size <= virtual + filesz:
            start = offset + address - virtual
            if start + size > len(engine):
                raise ValueError("Truncated ELF payload")
            return start
    raise ValueError(f"Unmapped engine address: {address:#x}+{size:#x}")


def mapped_bytes(engine: bytes, address: int, size: int) -> bytes:
    offset = mapped_offset(engine, address, size)
    return engine[offset:offset + size]


def startup_digest(payload: bytes) -> str:
    inner = hashlib.md5(payload).hexdigest()
    return hashlib.md5((inner * 2).encode("ascii")).hexdigest()


def inspect_apk(path: Path, baseline_routine: bytes | None) -> tuple[dict, bytes]:
    with zipfile.ZipFile(path) as archive:
        engine = archive.read(ENGINE)
        routine = mapped_bytes(engine, ROUTINE_START, ROUTINE_END - ROUTINE_START)
        rows = []
        for name, address in CONSTANTS.items():
            payload = archive.read("assets/songs/" + name)
            stored = mapped_bytes(engine, address, 33)
            if stored[-1:] != b"\0" or not re.fullmatch(rb"[0-9a-f]{32}", stored[:32]):
                raise ValueError(f"Unexpected native digest literal for {name} in {path.name}")
            expected = stored[:32].decode("ascii")
            computed = startup_digest(payload)
            if not payload:
                raise ValueError(f"Empty metadata: {name}")
            # Simulate exactly one changed byte in memory; no archive is edited.
            mutated = bytes([payload[0] ^ 1]) + payload[1:]
            changed_digest = startup_digest(mutated)
            rows.append({
                "asset": "assets/songs/" + name,
                "bytes": len(payload),
                "sha256": hashlib.sha256(payload).hexdigest(),
                "native_constant_address": hex(address),
                "native_expected": expected,
                "computed": computed,
                "matches": computed == expected,
                "single_byte_mutation_digest": changed_digest,
                "single_byte_mutation_rejected": changed_digest != expected,
            })
    return {
        "apk": path.name,
        "apk_bytes": path.stat().st_size,
        "engine_sha256": hashlib.sha256(engine).hexdigest(),
        "metadata": rows,
        "matching_metadata_count": sum(row["matches"] for row in rows),
        "routine_address_range": [hex(ROUTINE_START), hex(ROUTINE_END)],
        "routine_range_end_exclusive": True,
        "routine_bytes": len(routine),
        "routine_sha256": hashlib.sha256(routine).hexdigest(),
        "routine_unchanged_from_original": baseline_routine is None or routine == baseline_routine,
    }, routine


def inspect_fix_delta(bad_path: Path, fixed_path: Path) -> dict:
    """Require only the three expected native literal regions to change."""
    with zipfile.ZipFile(bad_path) as bad, zipfile.ZipFile(fixed_path) as fixed:
        for archive in (bad, fixed):
            if len(archive.namelist()) != len(set(archive.namelist())):
                raise ValueError("Duplicate ZIP entries in bad/fix1 delta comparison")
        before_entries = {entry.filename: (entry.CRC, entry.file_size) for entry in bad.infolist()
                          if not entry.filename.startswith("META-INF/")}
        after_entries = {entry.filename: (entry.CRC, entry.file_size) for entry in fixed.infolist()
                         if not entry.filename.startswith("META-INF/")}
        if before_entries.keys() != after_entries.keys():
            raise ValueError("Non-signature ZIP entry names changed between bad and fix1")
        changed_entries = sorted(name for name in before_entries
                                 if before_entries[name] != after_entries[name])
        if changed_entries != [ENGINE]:
            raise ValueError(f"Expected only {ENGINE} to change CRC/size, got {changed_entries}")
        before, after = bad.read(ENGINE), fixed.read(ENGINE)
        if len(before) != len(after):
            raise ValueError("Native engine length changed")
        ranges = []
        for name, address in CONSTANTS.items():
            offset = mapped_offset(before, address, 33)
            if mapped_offset(after, address, 33) != offset:
                raise ValueError(f"Native ELF mapping changed for {name}")
            if before[offset + 32] != 0 or after[offset + 32] != 0:
                raise ValueError(f"Digest NUL terminator changed for {name}")
            old, new = before[offset:offset + 32], after[offset:offset + 32]
            if old == new:
                raise ValueError(f"Expected native digest literal to change: {name}")
            ranges.append({"asset": name, "virtual_address": hex(address), "file_offset": offset,
                           "allowed_length": 32,
                           "changed_byte_count": sum(a != b for a, b in zip(old, new)),
                           "nul_terminator_preserved": True})
        cursor = 0
        for region in sorted(ranges, key=lambda item: item["file_offset"]):
            offset = region["file_offset"]
            if before[cursor:offset] != after[cursor:offset]:
                raise ValueError(f"Native bytes changed outside allowed digest ranges, before offset {offset:#x}")
            cursor = offset + 32
        if before[cursor:] != after[cursor:]:
            raise ValueError("Native bytes changed after the final allowed digest range")
        if mapped_bytes(before, ROUTINE_START, ROUTINE_END - ROUTINE_START) != mapped_bytes(after, ROUTINE_START, ROUTINE_END - ROUTINE_START):
            raise ValueError("Startup routine changed between bad and fix1")
    return {"status": "pass", "compared_non_signature_entries": len(before_entries),
            "changed_payload_entries": changed_entries, "native_engine_length_preserved": True,
            "allowed_native_changes": ranges, "all_other_native_bytes_unchanged": True,
            "startup_routine_unchanged": True,
            "signature_exclusion": "META-INF ZIP entries and APK signing blocks outside ZIP payload entries"}


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--require-fix", action="store_true", help="Fail if fix1 has not been built yet")
    args = parser.parse_args()
    report = {
        "algorithm": "md5((md5(payload).hexdigest() * 2).encode('ascii')).hexdigest()",
        "validation": "Static APK payload verification; not an Android runtime test",
        "artifacts": {},
        "errors": [],
    }
    errors = report["errors"]
    baseline = None
    for role, filename in APKS.items():
        path = ROOT / filename
        if not path.exists():
            report["artifacts"][role] = {"apk": filename, "status": "pending"}
            if role != "fix1" or args.require_fix:
                errors.append(f"Missing required artifact: {filename}")
            continue
        try:
            entry, routine = inspect_apk(path, baseline)
            report["artifacts"][role] = entry
            if role == "original":
                baseline = routine
                if entry["engine_sha256"] != ORIGINAL_ENGINE_SHA256:
                    errors.append("Original engine fingerprint differs from the inspected source")
            expected_matches = 0 if role == "known_bad" else 3
            if entry["matching_metadata_count"] != expected_matches:
                errors.append(f"{role}: expected {expected_matches}/3 digest matches, got {entry['matching_metadata_count']}/3")
            if baseline is None or not entry["routine_unchanged_from_original"]:
                errors.append(f"{role}: startup integrity routine differs from the original or baseline unavailable")
            if role != "known_bad" and not all(row["single_byte_mutation_rejected"] for row in entry["metadata"]):
                errors.append(f"{role}: a simulated one-byte mutation was not rejected")
            entry["status"] = "pass" if not any(message.startswith(role + ":") for message in errors) else "fail"
        except (OSError, ValueError, KeyError, zipfile.BadZipFile, struct.error) as error:
            report["artifacts"][role] = {"apk": filename, "status": "error", "error": str(error)}
            errors.append(f"{role}: {error}")
    if (ROOT / APKS["fix1"]).exists() and (ROOT / APKS["known_bad"]).exists():
        try:
            report["bad_to_fix_delta"] = inspect_fix_delta(ROOT / APKS["known_bad"], ROOT / APKS["fix1"])
        except (OSError, ValueError, KeyError, zipfile.BadZipFile, struct.error) as error:
            report["bad_to_fix_delta"] = {"status": "fail", "error": str(error)}
            errors.append(f"bad_to_fix_delta: {error}")
    else:
        report["bad_to_fix_delta"] = {"status": "pending"}
    pending = report["artifacts"].get("fix1", {}).get("status") == "pending"
    report["status"] = "fail" if errors else "pending_fix1" if pending else "pass"
    destination = Path(__file__).with_suffix(".json")
    destination.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    for role, entry in report["artifacts"].items():
        print(f"{role}: {entry['status']}; metadata matches={entry.get('matching_metadata_count', 'pending')}; routine unchanged={entry.get('routine_unchanged_from_original', 'pending')}")
    for error in errors:
        print("ERROR:", error)
    print("Bad-to-fix1 payload delta:", report["bad_to_fix_delta"]["status"])
    print("Overall:", report["status"])
    print("Report:", destination)
    return 1 if errors else 0


if __name__ == "__main__":
    raise SystemExit(main())
