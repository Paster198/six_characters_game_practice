#!/usr/bin/env python3
"""Read-only verification of this APK's exact AArch64 native adapter mappings.

Usage: python tools/verify_adapter.py [libcocos2dcpp.so] [verified_hooks.h]
An optional --adapter selects the C++ file whose actual hook calls are checked.
The script never generates expected values from the input being verified.
"""
from __future__ import annotations

import argparse
import hashlib
import io
import re
import struct
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "inspection/python_libs"))
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN
from elftools.elf.elffile import ELFFile

EXPECTED_SHA256 = "72e42cb4925655ecfef98bf2dbf92a5ac05145eb005a531c96c11b927a46e6dc"
EXPECTED_BUILD_ID = "c8434354f4ad8f78481f592cc0c215202a58a056"

# Mappings reviewed against RTTI, vtables, and their actual callers. Only hooks
# present in the adapter are required; e.g. an unused candidate need not exist.
HOOKS = {
    "kInit": (0xeb2494, "fd7bbaa9fc6f01a9fa6702a9f85f03a9"),
    "kClock": (0xccbe74, "fd7bbda9f50b00f9f44f02a9fd030091"),
    "kOffset": (0x9ce624, "ff8302d1fd7b04a9fc6f05a9fa6706a9"),
    "kFinish": (0x11940cc, "ff8301d1fd7b02a9f85f03a9f65704a9"),
    "kTimeOffset": (0x19768d4, "fd7bbea9f30b00f9fd0300915f080071"),
    "kRetry": (0x1a3bd48, "ff0304d1fd7b0ca9f76b00f9f6570ea9"),
    "kChartInit": (0x13d2b10, "ffc306d1e8a300fdfd7b15a9fc6f16a9"),
    "kFinalize": (0xae9374, "ff0304d1fd7b0ba9f96300f9f85f0da9"),
}

FINGERPRINTS = {
    "JNI renderer": (0x11fc164, "fd7bbfa9fd030091c7530694080040f9"),
    "GameScene pause": (0x9d3508, "fd7bbda9f65701a9f44f02a9fd030091"),
    "GameModel current time": (0xd2f348, "081840f909b54039a9000034092140b9"),
    "monotonic milliseconds": (0xc9cc78, "fd7bbfa9fd03009164fa3694689b86d2"),
    "note speed override call site": (0xeb2b20, "64be44b9e603152a685f1294"),
    "note speed tenths conversion": (0x134a9e0, "c002221e0190241e0018211ea6020012"),
    "chart init argument forwarding": (0xf198b8,
        "680240f9080940f94403001227030012e6430091e00313aae10318aae20317aa"
        "e30316aae503152a0041201ef40300b900013fd6"),
    "chart init stack and float arguments": (0x13d2b10,
        "ffc306d1e8a300fdfd7b15a9fc6f16a9fa6717a9f85f18a9f65719a9f44f1aa9"
        "fd430591e52f00b957d03bd5e81640f9b36340b989000012ea000012f40300aa"
        "a8831df8093003390a34033900f000bde11300f9"),
    "no-fail PlayParameters branch": (0x928c30,
        "ea0740f94a354d39aa0700346a024539350080528af7ff35295540f97502053975f20439"),
    # Preview uses the original full pause and only hides the existing visual.
    # The ordinary visit path continues rendering; paused model state skips
    # judgments/input while still refreshing scene controls and note geometry.
    "preview GameUI pause root +0x300": (0x7b7020,
        "608241f94d761e94608241f9b6b10494608241f9e11f8052080040f9083942f9"
        "00013fd6608241f9080040f9082141f900013fd6"),
    "preview full scene/model pause flags": (0x9d3544,
        "60e241f914010036a1020012918ef797c002003668da41f9007d41f9f7670b94"
        "05000014d7a42b9468da41f9007d41f98f9f3e9460f241f98102001276c21239eaab0894"),
    "preview model+0x138 and timeline+0x30": (0xbfe52c,
        "081840f92100001201e00439e00308aa99fe0b14"),
    "preview Node visible setter": (0xd8c1ec,
        "09044739280000123f01086be000005408040739a1000036083041b929068052"),
    "preview saved paused base +0x24": (0xefe010,
        "683640b9692a40b9ea7681121f010071eac38a1a0901094b29010a0b2801084b682600b9"),
    "preview paused elapsed +0x28": (0xccbe90,
        "741240b9753640b97843ff9768b24039bf020071ea7681120900144beac38a1a"
        "29010a0b692200b9880000346a2640b92a010a4b6a2a00b96aba40392a010034"),
    "preview onEnter retains pause fields": (0x19a97f0,
        "a81a40f9f50b40f929008052144d01a9f44f42a909b50039fd7bc3a8c0035fd6"),
    "preview started and unstarted currentTime": (0xd2f348,
        "081840f909b54039a9000034092140b9082940b92001084bc0035fd6093540b9"
        "082940b9ea7681123f010071eac38a1a2801084b00010a0bc0035fd6"),
    "preview native zero-delta audio seek": (0x1976910,
        "0801010b683600b95755cd976810009008a947f9080140f9880200b4000940f968b6403988020035683640b9"),
    "preview visit frame guard not pause guard": (0x902f1c,
        "600a00365a382a94083441b969d244b91f01096b81010054"),
    "preview visit time and UI refresh": (0x902f60,
        "60f241f9e10313aa1695009460f241f978e241f9f5b0109462f241f9e103002ae00318aad7b42794"),
    "preview visit chart visual refresh": (0x902fe4,
        "78da41f9198002911a800491d6b0109468f241f9e303002ae00318aae10319aa0085492de2031aaa46550e94"),
    "preview geometry updates before paused guard": (0x928670,
        "e00313aa26603694e00313aa475d3694"),
    "preview paused model skips judgments": (0x928738,
        "68e244390801003568e6443968000035e00313aa9f561f94e10740f9e00313aa36542594601e40f941c741b9884f1094"),
    # Immediate preview reconstructs a normal GameScene using retry's exact
    # constructor arguments, then queues the raw scene without a transition.
    "immediate retry constructor argument loads": (0x1a3be5c,
        "009c8052447d0094618e41f9622243b9632a43b9641243b965f24d3966be44b9"
        "681643b9694a43b96ae652396b7a43b9f60300aaea8300398a020012e70315aa"
        "eb2b00b9ff0b00f9e90b00b9ea630039e80300b940bcb697"),
    "immediate retry play parameters": (0x1a3beb4,
        "68320d91000540ad081140f96a7643b9c9320d91200500ad281100f9ca7603b9"),
    "immediate constructor stack arguments": (0x7eb010,
        "aa5b40b9a87b40b9abc34139ada34139a93340f9ae5340b95f0100714c030012"),
    "immediate constructor autorelease": (0x7eb0e8,
        "e00313aaaf3a289460c241f9400000b42e76489473d02e94"),
    "immediate retry flag write": (0x1a3bd68,
        "29008052360a00f0f403012aa8831ff8e80c009009112539"),
    "immediate retry flag consume": (0xeb2938,
        "286900b009116539690000361f11253938000014"),
    "immediate shutter audio stop before scene init": (0x15512a8,
        "883100b008a947f9080140f9080940f9e00308aa1b7af297f4470f94080040f9"
        "081140f900013fd6fe37f997687a41f9f40300aa090140f9e00308aa298941f9"
        "20013fd6607a41f940fcef97607641f97f7a01f9080040f9086d42f900013fd6"),
    "immediate Director replace prologue": (0xfed4b0,
        "fd7bbda9f50b00f9f44f02a9fd03009108a040f9f30300aaf40301aa480400b4"
        "60a640f91f0014eb60030054c00100b4"),
    "immediate Director scene ownership": (0xfed514,
        "69a255a900815ff8150109cb2800805268420539b28b059468ae40f9e00314aa"
        "a802088b14811ff81d6d289474a600f9"),
    "immediate new LogicChart allocation": (0xf197f8,
        "f80300aa00238052f403072af903062afb0305aa0840201ef503042afa03032a"
        "f60302aaf70301aaa8831ef8d3062d94f30300aa"),
    "immediate AFF parse each rebuild": (0x134a944,
        "e0c30091a1e300d1ad421c94e0c30091e103132afd8dee97"),
    "immediate new chart factory call": (0x134a9ec,
        "a6020012e5030091e00314aae10318aae20317aae3031f2ae403192ae703132a703bef97"),
    "immediate audio cleanup entry": (0x11efb28,
        "ff8301d1fd7b02a9f71b00f9f65704a9f44f05a9fd830091"),
    "immediate old exit and cleanup before replacement": (0x1533378,
        "72a01494600200b5b40200b4880240f9e00314aa088d41f900013fd660a240f9"
        "080040f9088941f900013fd66842453974a240f9e8000034d40000b4880240f9"
        "e00314aa089141f900013fd674a240f9740000b4e00314aa"),
    "immediate new enter and transition finish": (0x15333d0,
        "0874f09760a640f960a200f97555139460a240f97fa600f91f0000f1e8179f1a"
        "a802082aa8000036f44f42a9f50b40f9fd7bc3a8c0035fd6080040f9088141f9"
        "00013fd660a240f9f44f42a9f50b40f9080040f9018541f9"),
    "immediate Timeline destructor no audio": (0xd2d4fc, "c0035fd6"),
    "immediate positive start skips intro delay": (0x19bb2a0,
        "69b644b9290400340890e7979a0200cb0690e797f50300aa7086cb979f0215eb"
        "48c39f9a1500088b0090e797f60300aafe8fe79768f241f99f0216eb49c39f9a"
        "0200098be00308aae10315aa35b9ff97280340f9"),
}

VTABLE_POINTERS = {
    "GameScene pause slot": (0x1b267f8, 0x9d3508),
    "GameScene retry slot": (0x1b26800, 0x1a3bd48),
    "GameScene finish slot": (0x1b26828, 0x11940cc),
    "LogicChart init slot": (0x1ad9830, 0x13d2b10),
    "GameScene visible setter slot": (0x1b26438, 0xd8c1ec),
    "GameScene visit slot": (0x1b26620, 0x902ee4),
    "GameScene init slot": (0x1b267c0, 0xeb2494),
    "GameScene onEnter slot": (0x1b265e8, 0x7c6aa8),
    "GameScene onEnterTransitionDidFinish slot": (0x1b265f0, 0x19bb218),
    "GameScene onExit slot": (0x1b265f8, 0xb37dc0),
    "GameScene cleanup slot": (0x1b26608, 0x12effb0),
    "GameTimeline destructor": (0x1b417a0, 0xd2d4fc),
}


def parse_header(path: Path) -> dict[str, bytes]:
    content = path.read_text(encoding="utf-8-sig")
    result = {}
    for name, body in re.findall(r"unsigned\s+char\s+(\w+)\s*\[\s*\]\s*=\s*\{([^}]*)\}", content):
        if name in result:
            raise ValueError(f"Duplicate expected-byte array {name}")
        body = re.sub(r"/\*.*?\*/|//[^\n]*", "", body, flags=re.S)
        tokens = [token.strip() for token in body.split(",") if token.strip()]
        result[name] = bytes(int(token, 0) for token in tokens)
    return result


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("binary", nargs="?", type=Path,
                        default=ROOT / "inspection/lib/arm64-v8a/libcocos2dcpp.so")
    parser.add_argument("header", nargs="?", type=Path, default=ROOT / "native/verified_hooks.h")
    parser.add_argument("--adapter", type=Path, default=ROOT / "native/practice_bridge.cpp")
    args = parser.parse_args()
    failures = []
    checks = 0

    def check(condition: bool, message: str) -> None:
        nonlocal checks
        checks += 1
        if not condition:
            failures.append(message)

    binary = args.binary.read_bytes()
    elf = ELFFile(io.BytesIO(binary))
    check(elf["e_machine"] == "EM_AARCH64" and elf.elfclass == 64 and elf.little_endian,
          "Input is not a little-endian AArch64 ELF64")
    check(hashlib.sha256(binary).hexdigest() == EXPECTED_SHA256,
          "Full binary SHA256 differs from the inspected APK's native library")
    segments = list(elf.iter_segments())

    def read(address: int, size: int) -> bytes:
        for segment in segments:
            if (segment["p_type"] == "PT_LOAD" and segment["p_vaddr"] <= address
                    and address + size <= segment["p_vaddr"] + segment["p_filesz"]):
                offset = segment["p_offset"] + address - segment["p_vaddr"]
                return binary[offset:offset + size]
        raise ValueError(f"Address 0x{address:x}+{size} is outside file-backed ELF segments")

    def mapped(address: int, executable: bool) -> bool:
        return any(segment["p_type"] == "PT_LOAD" and segment["p_vaddr"] <= address
                   < segment["p_vaddr"] + segment["p_memsz"]
                   and (not executable or segment["p_flags"] & 1) for segment in segments)

    expected = parse_header(args.header)
    build_ids = [str(note["n_desc"]).lower()
                 for section in elf.iter_sections() if section["sh_type"] == "SHT_NOTE"
                 for note in section.iter_notes() if note["n_type"] == "NT_GNU_BUILD_ID"]
    check(build_ids == [EXPECTED_BUILD_ID], f"Unexpected GNU build-id: {build_ids}")
    check(expected.get("kBuildId") == bytes.fromhex(EXPECTED_BUILD_ID), "Header kBuildId mismatch")
    check(read(0x2e0, 20) == expected.get("kBuildId"), "Runtime build-id offset 0x2e0 mismatch")

    symbols = elf.get_section_by_name(".dynsym")
    renderer = symbols.get_symbol_by_name("Java_org_cocos2dx_lib_Cocos2dxRenderer_nativeRender")
    check(bool(renderer) and renderer[0]["st_value"] == 0x11fc164, "JNI renderer symbol mapping mismatch")

    adapter = args.adapter.read_text(encoding="utf-8-sig")
    installed = re.findall(r"\bhook\(\s*(\d+)\s*,\s*(0x[0-9a-fA-F]+)\s*,\s*(\w+)\s*,", adapter)
    check(bool(installed), "No actual hook call sites found in adapter")
    check(len({int(index) for index, _, _ in installed}) == len(installed), "Duplicate hook index")
    check(len({int(address, 16) for _, address, _ in installed}) == len(installed), "Duplicate hook address")

    decoder = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
    decoder.detail = True
    for index, address_text, name in installed:
        address = int(address_text, 16)
        if name not in HOOKS:
            failures.append(f"Unreviewed hook mapping {name} at {address_text}")
            continue
        canonical_address, fingerprint = HOOKS[name]
        canonical = bytes.fromhex(fingerprint)
        check(address == canonical_address, f"{name}: expected address 0x{canonical_address:x}")
        check(expected.get(name) == canonical, f"{name}: header fingerprint differs from reviewed bytes")
        actual = read(address, 16)
        check(actual == expected.get(name), f"{name}: binary/header prologue mismatch")
        check(mapped(address, True), f"{name}: hook is not in executable ELF memory")
        instructions = list(decoder.disasm(actual, address))
        check(len(instructions) == 4 and sum(i.size for i in instructions) == 16,
              f"{name}: prologue is not exactly four valid AArch64 instructions")
        for instruction in instructions:
            word = struct.unpack("<I", instruction.bytes)[0]
            # ADR/ADRP; B/BL; B.cond; CBZ/CBNZ; TBZ/TBNZ; literal loads/PRFM.
            pc_relative = (
                word & 0x1f000000 == 0x10000000
                or word & 0x7c000000 == 0x14000000
                or word & 0xff000010 == 0x54000000
                or word & 0x7e000000 in (0x34000000, 0x36000000)
                or word & 0x3b000000 == 0x18000000
            )
            check(not pc_relative,
                  f"{name}: cannot relocate PC-relative instruction at 0x{instruction.address:x}: "
                  f"{instruction.mnemonic} {instruction.op_str}")
            check(instruction.mnemonic in {"stp", "str", "sub", "add", "mov", "cmp"},
                  f"{name}: unreviewed trampoline instruction {instruction.mnemonic} {instruction.op_str}")

    for name, (address, fingerprint) in FINGERPRINTS.items():
        canonical = bytes.fromhex(fingerprint)
        check(read(address, len(canonical)) == canonical, f"{name}: fixed call-site fingerprint mismatch")

    relocations = {}
    for section in elf.iter_sections():
        if section["sh_type"] == "SHT_RELA":
            for relocation in section.iter_relocations():
                if relocation["r_info_type"] == 1027:  # R_AARCH64_RELATIVE
                    relocations[relocation["r_offset"]] = relocation["r_addend"]
    for name, (address, target) in VTABLE_POINTERS.items():
        actual = relocations.get(address, struct.unpack("<Q", read(address, 8))[0])
        check(actual == target, f"{name}: relocated vtable pointer mismatch")
    for name, address in {"Director singleton": 0x1bec058, "App manager singleton": 0x1be7028}.items():
        check(mapped(address, False), f"{name}: global address is outside ELF memory")
    for _, address_text, name in installed:
        address = int(address_text, 16)
        check(not any(address <= relocation < address + 16 for relocation in relocations),
              f"{name}: copied prologue contains an ELF dynamic relocation")

    used_arrays = {name for _, _, name in installed} | {"kBuildId"}
    unused = sorted(set(expected) - used_arrays)
    if unused:
        print("Ignored header arrays not installed as hooks: " + ", ".join(unused))
    if failures:
        for failure in failures:
            print("FAIL: " + failure, file=sys.stderr)
        print(f"Adapter verification failed: {len(failures)} failures in {checks} checks", file=sys.stderr)
        return 1
    print(f"PASS: {checks} checks; {len(installed)} actual hook mappings; exact SHA256/build-id; "
          "call-site fingerprints and relocation-free prologues verified.")
    print("Static checks establish this binary mapping, not Android runtime behavior.")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, ValueError, KeyError) as error:
        print(f"FAIL: {error}", file=sys.stderr)
        raise SystemExit(1)
