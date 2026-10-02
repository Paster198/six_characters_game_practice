#!/usr/bin/env python3
"""Build metadata for only the complete local songs already bundled in the APK.

No song, chart, artwork, or music is downloaded or modified. The original APK
is read only; outputs are three replacement JSON assets and inventory reports.
Arcahv's native challenge selector still needs the separate offline adapter.
"""
from __future__ import annotations

import argparse
import collections
import copy
import csv
import io
import json
from pathlib import Path, PurePosixPath
import zipfile

ROOT = Path(__file__).resolve().parents[1]
DIFFICULTY_NAMES = {0: "PST", 1: "PRS", 2: "FTR", 3: "BYD", 4: "ETR"}
HIDDEN_FLAGS = ("hidden_until", "hidden_until_unlocked", "songlist_hidden")


def identify(data: bytes) -> str:
    if data.startswith(b"OggS"):
        return "ogg"
    if data.startswith(b"\xff\xd8\xff"):
        return "jpeg"
    if data.startswith(b"\x89PNG\r\n\x1a\n"):
        return "png"
    if data.startswith(b"RIFF"):
        return "riff"
    if data.startswith(b"AudioOffset:"):
        return "aff"
    if data.lstrip().startswith(b"{"):
        return "json"
    return "unknown"


def json_write(path: Path, content) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(content, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def contains_key(value, key: str) -> bool:
    if isinstance(value, dict):
        return key in value or any(contains_key(item, key) for item in value.values())
    if isinstance(value, list):
        return any(contains_key(item, key) for item in value)
    return False


def build(apk: Path, output: Path, report_dir: Path) -> dict:
    report_dir.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(apk) as archive:
        infos = archive.infolist()
        names = {entry.filename for entry in infos}
        if len(names) != len(infos):
            raise ValueError("Duplicate APK entry names require review")
        source_songlist = json.loads(archive.read("assets/songs/songlist"))
        source_packlist = json.loads(archive.read("assets/songs/packlist"))
        source_unlocks = json.loads(archive.read("assets/songs/unlocks"))
        songs = source_songlist["songs"]
        entries = [entry for entry in infos if entry.filename.startswith("assets/songs/")]
        signatures = {}
        for entry in entries:
            with archive.open(entry) as stream:
                signatures[entry.filename] = identify(stream.read(256))
        unknown = [name for name, kind in signatures.items() if kind == "unknown"]
        if unknown:
            raise ValueError("Unrecognized assets need review: " + ", ".join(unknown))

        selected = []
        inventory = []
        chart_rows = []
        selected_ids = set()
        for song in songs:
            song_id = song["id"]
            local_prefix = f"assets/songs/{song_id}/"
            remote_prefix = f"assets/songs/dl_{song_id}/"
            local_files = [entry.filename for entry in entries if entry.filename.startswith(local_prefix)]
            remote_files = [entry.filename for entry in entries if entry.filename.startswith(remote_prefix)]
            all_files = local_files + remote_files
            kept_difficulties = []
            available = []
            missing = []
            for difficulty in song.get("difficulties", []):
                rating_class = difficulty["ratingClass"]
                chart = f"{local_prefix}{rating_class}.aff"
                audio_name = f"{rating_class}.ogg" if difficulty.get("audioOverride") else "base.ogg"
                audio = local_prefix + audio_name
                chart_present = signatures.get(chart) == "aff"
                audio_present = signatures.get(audio) == "ogg"
                required_missing = [item["file_name"] for item in song.get("additional_files", [])
                                    if item.get("requirement") == "required"
                                    and local_prefix + item["file_name"] not in names]
                complete = chart_present and audio_present and not required_missing and not song.get("deleted")
                row = {
                    "id": song_id,
                    "title": song.get("title_localized", {}).get("en", song_id),
                    "idx": song["idx"],
                    "ratingClass": rating_class,
                    "difficulty": DIFFICULTY_NAMES.get(rating_class, str(rating_class)),
                    "chart_path": chart,
                    "audio_path": audio,
                    "chart_present": chart_present,
                    "audio_present": audio_present,
                    "required_missing": required_missing,
                    "included_offline": complete,
                    "remote_dl": song.get("remote_dl", False),
                    "purchase": song.get("purchase", ""),
                    "world_unlock": difficulty.get("world_unlock", song.get("world_unlock", False)),
                    "hidden_until": difficulty.get("hidden_until", ""),
                }
                chart_rows.append(row)
                if complete:
                    # Confirm the full small chart is valid text, not a binary blob
                    # whose first bytes merely resemble AFF. Music stays in the APK.
                    chart_text = archive.read(chart).decode("utf-8-sig")
                    if "\n-" not in chart_text or "timing(" not in chart_text:
                        raise ValueError(f"Invalid AFF structure: {chart}")
                    result = copy.deepcopy(difficulty)
                    for flag in HIDDEN_FLAGS:
                        result.pop(flag, None)
                    result.pop("require_online", None)
                    if "world_unlock" in result:
                        result["world_unlock"] = False
                    kept_difficulties.append(result)
                    available.append(rating_class)
                else:
                    missing.append(rating_class)
            inventory.append({
                "id": song_id,
                "idx": song["idx"],
                "title": song.get("title_localized", {}).get("en", song_id),
                "deleted": song.get("deleted", False),
                "original_set": song.get("set"),
                "original_purchase": song.get("purchase"),
                "original_remote_dl": song.get("remote_dl", False),
                "original_world_unlock": song.get("world_unlock", False),
                "available_difficulties": available,
                "missing_difficulties": missing,
                "local_files": local_files,
                "download_preview_files": remote_files,
                "bundled_full_audio": [name for name in all_files if PurePosixPath(name).suffix == ".ogg"
                                       and "preview" not in PurePosixPath(name).name],
                "included_offline": bool(kept_difficulties),
            })
            if kept_difficulties:
                result = copy.deepcopy(song)
                result["difficulties"] = kept_difficulties
                result["set"] = "base"
                result["purchase"] = ""
                result["remote_dl"] = False
                result["world_unlock"] = False
                for flag in HIDDEN_FLAGS + ("byd_local_unlock", "require_online"):
                    result.pop(flag, None)
                selected.append(result)
                selected_ids.add(song_id)

        # Pin output counts to this inspected APK. A different source requires a
        # fresh inventory and review instead of silently broadening the patch.
        included_rows = [row for row in chart_rows if row["included_offline"]]
        if len(selected) != 31 or len(included_rows) != 100:
            raise ValueError(f"Expected inspected 31 songs / 100 charts, got {len(selected)} / {len(included_rows)}")
        if len({song["id"] for song in selected}) != len(selected):
            raise ValueError("Duplicate song IDs")
        for difficulty in (0, 1):
            path = f"assets/songs/tutorial/{difficulty}.aff"
            if signatures.get(path) != "aff":
                raise ValueError(f"Missing native tutorial asset: {path}")
        if signatures.get("assets/songs/tutorial/base.ogg") != "ogg":
            raise ValueError("Missing tutorial music")
        if any(song["id"] == "tutorial" for song in songs):
            raise ValueError("Tutorial metadata changed; review native tutorial routing")

        new_songlist = {**source_songlist, "songs": selected}
        base_pack = next(pack for pack in source_packlist["packs"] if pack["id"] == "base")
        new_packlist = {**source_packlist, "packs": [copy.deepcopy(base_pack)]}
        # Local fragment/score unlock requirements are intentionally omitted for
        # the requested offline practice catalog. Arcahv has no source rule here.
        new_unlocks = {**source_unlocks, "unlocks": []}
        target = output / "assets/songs"
        json_write(target / "songlist", new_songlist)
        json_write(target / "packlist", new_packlist)
        json_write(target / "unlocks", new_unlocks)

        source_local_unlocks = [rule for rule in source_unlocks["unlocks"] if rule["songId"] in selected_ids]
        signature_counts = collections.Counter(signatures.values())
        extension_counts = collections.Counter(PurePosixPath(entry.filename).suffix or "(no extension)" for entry in entries)
        audio_names = collections.Counter(PurePosixPath(entry.filename).name for entry in entries
                                          if PurePosixPath(entry.filename).suffix in (".ogg", ".wav"))
        summary = {
            "source_apk": str(apk.resolve()),
            "source_apk_bytes": apk.stat().st_size,
            "source_song_records": len(songs),
            "source_active_songs": sum(not song.get("deleted", False) for song in songs),
            "source_difficulties": len(chart_rows),
            "song_asset_entries": len(entries),
            "song_asset_uncompressed_bytes": sum(entry.file_size for entry in entries),
            "extension_counts": dict(extension_counts),
            "signature_counts": dict(signature_counts),
            "unknown_signature_entries": unknown,
            "audio_filename_counts": dict(audio_names),
            "source_remote_dl_true": sum(song.get("remote_dl", False) for song in songs),
            "source_require_online_key_present": any(contains_key(value, "require_online")
                                                      for value in (source_songlist, source_packlist, source_unlocks)),
            "offline_song_count": len(selected),
            "offline_difficulty_count": len(included_rows),
            "offline_difficulties_by_class": dict(collections.Counter(row["difficulty"] for row in included_rows)),
            "offline_song_ids": [song["id"] for song in selected],
            "removed_missing_local_difficulties": [row for row in chart_rows if row["id"] in selected_ids
                                                    and not row["included_offline"]],
            "source_local_unlock_rule_count": len(source_local_unlocks),
            "source_local_unlock_condition_types": dict(collections.Counter(condition["type"]
                for rule in source_local_unlocks for condition in rule["conditions"])),
            "arcahv_source": next(song for song in songs if song["id"] == "arcahv"),
            "arcahv_source_unlock_rules": [rule for rule in source_unlocks["unlocks"] if rule["songId"] == "arcahv"],
            "native_arcahv_adapter_required": True,
            "tutorial": {"metadata_in_songlist": False, "chart_count": 2, "asset_preservation": "unchanged in APK"},
            "output_assets": ["assets/songs/songlist", "assets/songs/packlist", "assets/songs/unlocks"],
        }
        json_write(report_dir / "asset-report.json", {"summary": summary, "songs": inventory, "charts": chart_rows})
        with (report_dir / "asset-report.csv").open("w", newline="", encoding="utf-8-sig") as stream:
            writer = csv.DictWriter(stream, fieldnames=list(chart_rows[0]))
            writer.writeheader()
            writer.writerows(chart_rows)
        with (report_dir / "asset-report-offline.csv").open("w", newline="", encoding="utf-8-sig") as stream:
            writer = csv.DictWriter(stream, fieldnames=list(chart_rows[0]))
            writer.writeheader()
            writer.writerows(included_rows)

    lines = [
        "# Offline asset inventory and metadata conversion",
        "",
        f"Source: `{apk.resolve()}` ({summary['source_apk_bytes']:,} bytes). Original APK was read only.",
        "",
        "The APK lists 552 active songs (plus one deleted record), with 1,833 declared difficulties. "
        "Only 31 songs / 100 difficulty charts have both a complete AFF and their required full music in the APK. "
        "The native tutorial separately has two AFFs and full music; it was not in songlist and remains unchanged.",
        "",
        "Every one of the 2,104 entries under assets/songs was inspected by file signature. "
        "There are 102 actual text AFFs, 1,224 JPEGs, 199 PNGs (two named .jpg), 571 Ogg files, "
        "five RIFF/WAV files and three JSON metadata files. No extensionless encrypted chart or unknown binary entry was found. "
        "The only extensionless song entries are songlist, packlist and unlocks.",
        "",
        "Audio inventory: 32 base.ogg files (31 catalog songs + tutorial), eight complete 3.ogg files under dl_* directories, "
        "523 preview.ogg files and eight 3_preview.ogg files. The eight extra full BYD audio files have no corresponding charts. "
        "A preview or a jacket image cannot substitute for a missing chart or full song.",
        "",
        "Generated output: build/offline/assets/songs/songlist, packlist, unlocks. The song list retains source IDs, indices, "
        "titles, artist, rating, chart author, BPM, visual backgrounds and actual complete difficulty entries. "
        "All selected songs use the existing base pack, purchase is empty, remote_dl and world_unlock are false, "
        "and hidden flags are removed. Only the original base pack entry is retained. Local unlock rules are cleared "
        "for this offline practice catalog (47 original rules, with fragment and score conditions).",
        "",
        "Kept difficulties: 31 PST + 31 PRS + 31 FTR + seven ETR = 100. "
        "Ten declared BYD entries on otherwise local songs lack AFFs and are removed from the output. "
        "521 other active songs have no complete bundled charts and are omitted from the offline catalog. "
        "No asset was fetched or synthesized.",
        "",
        "Arcahv is fully bundled (0/1/2.aff and base.ogg). Its original metadata has set=vs, purchase=vs, "
        "world_unlock=true, remote_dl=false, hidden_until=difficulty and hidden_until_unlocked=true. "
        "It has no entry in source unlocks. It is moved into base and these gates are cleared, but "
        "GameScene still selects SpecialSceneArcahvChallenge by song ID in native code; the separate native "
        "offline adapter must bypass that selector for ordinary play. Metadata alone cannot guarantee this behavior.",
        "",
        "There is no literal require_online key anywhere in source songlist, packlist or unlocks. "
        "Login, World Mode tokens and special challenge behavior also live in native code; this report does not infer "
        "their complete behavior from metadata. Existing saves referring to omitted remote songs/packs and non-song-select "
        "story flows still need runtime checking. The output is intentionally a limited offline catalog.",
        "",
        "Per-song and per-difficulty evidence is in asset-report.json and asset-report.csv. "
        "asset-report-offline.csv lists only the 100 available difficulty entries.",
        "",
        "## Available songs",
        "",
    ]
    lines.extend(f"- {song['title_localized']['en']} (`{song['id']}`): "
                 + "/".join(DIFFICULTY_NAMES[d['ratingClass']] for d in song['difficulties']) for song in selected)
    (report_dir / "asset-report.md").write_text("\n".join(lines) + "\n", encoding="utf-8")
    return summary


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apk", type=Path, default=ROOT / "arcaea.apk")
    parser.add_argument("--output", type=Path, default=ROOT / "build/offline")
    parser.add_argument("--report-dir", type=Path, default=ROOT / "inspection/offline")
    args = parser.parse_args()
    summary = build(args.apk, args.output, args.report_dir)
    print(f"Prepared {summary['offline_song_count']} songs / {summary['offline_difficulty_count']} charts; "
          "tutorial assets unchanged; no unknown song-asset signatures.")
    print("Metadata output: " + str((args.output / "assets/songs").resolve()))
    print("Inventory report: " + str((args.report_dir / "asset-report.json").resolve()))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
