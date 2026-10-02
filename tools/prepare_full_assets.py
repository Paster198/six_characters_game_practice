#!/usr/bin/env python3
"""Prepare a streamable full-song import without extracting large music assets.

The original engine/UI stay in the base APK. Generated metadata and a ZIP-entry
mapping are written to build/full-offline; original input APKs are read only.
Missing story videos are reported, never synthesized. Ordinary-play handling
of special scene modifiers is the responsibility of the separate native patch.
"""
from __future__ import annotations

import argparse
import collections
import copy
import csv
import hashlib
import json
from pathlib import Path, PurePosixPath
import re
import zipfile

ROOT = Path(__file__).resolve().parents[1]
GENERATED = ["assets/songs/" + name for name in ("songlist", "packlist", "unlocks")]
NAMES = {0: "PST", 1: "PRS", 2: "FTR", 3: "BYD", 4: "ETR"}
GATES = ("hidden_until", "hidden_until_unlocked", "songlist_hidden", "byd_local_unlock", "require_online")
EXTRA_IDS = {"hivemindrmx", "ifirmx", "ignotusafterburn", "lfdyrmx", "mismal", "overdead",
             "redandblueandgreen", "singularityvvvip", "unknownrmx"}


def save_json(path: Path, data) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def safe_name(name: str) -> None:
    if not name.startswith("assets/") or "\\" in name or ".." in PurePosixPath(name).parts:
        raise ValueError(f"Unsafe or non-asset import name: {name}")


def valid_chart(archive: zipfile.ZipFile, name: str) -> tuple[bytes, str]:
    data = archive.read(name)
    text = data.decode("utf-8-sig")
    if not text.startswith("AudioOffset:") or "\n-" not in text or not re.search(r"\btiming\(", text):
        raise ValueError(f"Invalid AFF text: {name}")
    return data, text


def clear_gates(data: dict) -> dict:
    result = copy.deepcopy(data)
    for key in GATES:
        result.pop(key, None)
    if "world_unlock" in result:
        result["world_unlock"] = False
    if "ratingClass" in result:
        # The 7.0.255c parser defaults missing BYD fields to a world-unlock gate
        # and hidden-until-difficulty. Explicit values avoid those defaults;
        # the empty hidden_until string is parsed as the normal enum (0).
        result["world_unlock"] = False
        result["hidden_until"] = ""
    return result


def build(base_path: Path, source_path: Path, destination: Path, report_dir: Path) -> dict:
    with zipfile.ZipFile(base_path) as base, zipfile.ZipFile(source_path) as source:
        base_info = {entry.filename: entry for entry in base.infolist()}
        source_info = {entry.filename: entry for entry in source.infolist()}
        if len(base_info) != len(base.infolist()) or len(source_info) != len(source.infolist()):
            raise ValueError("Duplicate ZIP entry names need review")
        original_songlist = json.loads(base.read(GENERATED[0]))
        source_songlist = json.loads(source.read(GENERATED[0]))
        original_packlist = json.loads(base.read(GENERATED[1]))
        source_packlist = json.loads(source.read(GENERATED[1]))
        original_songs = {song["id"]: song for song in original_songlist["songs"]}
        source_songs = {song["id"]: song for song in source_songlist["songs"]}
        if len(source_songs) != 552 or sum(len(song["difficulties"]) for song in source_songs.values()) != 1833:
            raise ValueError("Expected the inspected Infinity 552-song / 1833-declared-difficulty input")
        imports = {}
        missing_additional = []
        omitted_difficulties = []
        chart_rows = []
        metadata_notes = []
        duplicate_chart_files = []
        used_charts = set()
        preserved_base_assets = set()
        chart_commands = collections.Counter()

        def resolve(name: str) -> tuple[zipfile.ZipFile, zipfile.ZipInfo]:
            safe_name(name)
            if name in source_info:
                return source, source_info[name]
            if name in base_info:
                return base, base_info[name]
            raise FileNotFoundError(name)

        def add_import(name: str, *, source_entry: str | None = None,
                       archive: zipfile.ZipFile | None = None, preserve_base: bool = False) -> None:
            safe_name(name)
            if preserve_base and name in base_info:
                preserved_base_assets.add(name)
                return
            entry = source_entry or name
            safe_name(entry)
            chosen, info = (archive, archive.getinfo(entry)) if archive is not None else resolve(entry)
            existing = base_info.get(name)
            if existing and (existing.CRC, existing.file_size) == (info.CRC, info.file_size):
                preserved_base_assets.add(name)
                return
            record = {"source_entry": entry, "target_entry": name, "crc32": info.CRC,
                      "size_bytes": info.file_size, "compressed_size": info.compress_size}
            if chosen is base:
                record["source_apk"] = str(base_path.resolve())
            if name in imports and imports[name] != record:
                raise ValueError(f"Conflicting import mappings for {name}")
            imports[name] = record

        def register_chart(song: dict, difficulty: dict, metadata_origin: str) -> bool:
            song_id, number = song["id"], difficulty["ratingClass"]
            prefix = f"assets/songs/{song_id}/"
            chart = prefix + str(number) + ".aff"
            audio = prefix + (str(number) + ".ogg" if difficulty.get("audioOverride") else "base.ogg")
            if chart not in source_info and chart not in base_info:
                omitted_difficulties.append({"id": song_id, "ratingClass": number,
                                             "reason": "No AFF in either input APK", "source_metadata": difficulty})
                return False
            chart_archive, _ = resolve(chart)
            audio_archive, audio_info = resolve(audio)
            with audio_archive.open(audio) as stream:
                if stream.read(4) != b"OggS":
                    raise ValueError(f"Required full music is not Ogg: {audio}")
            data, text = valid_chart(chart_archive, chart)
            used_charts.add(chart)
            chart_commands.update(re.findall(r"\b([A-Za-z_][A-Za-z_0-9]*)\(", text))
            add_import(chart)
            add_import(audio)
            chart_rows.append({"id": song_id, "title": song["title_localized"]["en"],
                "ratingClass": number, "difficulty": NAMES[number], "rating": difficulty.get("rating"),
                "metadata_origin": metadata_origin, "chart_path": chart, "audio_path": audio,
                "chart_bytes": len(data), "chart_sha256": hashlib.sha256(data).hexdigest(),
                "audio_bytes": audio_info.file_size, "audio_override": bool(difficulty.get("audioOverride")),
                "audio_source": "Infinity" if audio_archive is source else "original",
                "chart_source": "Infinity" if chart_archive is source else "original"})
            return True

        songs = []
        for original in source_songlist["songs"]:
            song = clear_gates(original)
            song.update(purchase="", remote_dl=False, world_unlock=False)
            song["difficulties"] = []
            for difficulty in original["difficulties"]:
                if register_chart(song, difficulty, "Infinity songlist"):
                    song["difficulties"].append(clear_gates(difficulty))
            if not song["difficulties"]:
                raise ValueError(f"No actual playable chart for declared song {song['id']}")
            retained_extra = []
            for additional in song.get("additional_files", []):
                name = f"assets/songs/{song['id']}/{additional['file_name']}"
                if name in source_info or name in base_info:
                    add_import(name)
                    retained_extra.append(additional)
                else:
                    missing_additional.append({"id": song["id"], **additional,
                                               "expected_path": name, "action": "Removed unavailable metadata reference"})
            if retained_extra:
                song["additional_files"] = retained_extra
            else:
                song.pop("additional_files", None)
            songs.append(song)

        all_aff = {name for name in source_info if name.startswith("assets/songs/") and name.endswith(".aff")}
        tutorial = {"assets/songs/tutorial/0.aff", "assets/songs/tutorial/1.aff"}
        extras = sorted(all_aff - used_charts - tutorial)
        discovered_ids = {name.split("/")[2] for name in extras if name.split("/")[2] not in source_songs}
        if discovered_ids != EXTRA_IDS or len(extras) != 10:
            raise ValueError(f"Unexpected extra AFF inventory: {extras}")
        next_idx = max(song["idx"] for song in original_songlist["songs"]) + 1
        song_by_id = {song["id"]: song for song in songs}
        for chart in extras:
            song_id = chart.split("/")[2]
            number = int(PurePosixPath(chart).stem)
            chart_bytes, text = valid_chart(source, chart)
            if chart == "assets/songs/genocider/3.aff":
                canonical = "assets/songs/quonwacca/3.aff"
                if chart_bytes != source.read(canonical):
                    raise ValueError("Unexpected GENOCIDER extra chart: inspected Quon duplicate no longer matches")
                duplicate_chart_files.append({"path": chart, "identical_to": canonical,
                    "sha256": hashlib.sha256(chart_bytes).hexdigest(),
                    "action": "AFF retained in APK; no false GENOCIDER BYD entry. Play this exact chart as Quon BYD.",
                    "reason": "Undeclared file is byte-for-byte Quon BYD, whose 170 BPM audio differs from GENOCIDER base music"})
                continue
            bpm_match = re.search(r"\btiming\([^,]+,([+-]?[\d.]+),", text)
            if not bpm_match:
                raise ValueError(f"No timing BPM in additional chart {chart}")
            first_bpm = float(bpm_match.group(1))
            label = "Imported extra chart; rating not provided"
            difficulty = {"ratingClass": number, "chartDesigner": label, "jacketDesigner": "", "rating": 0}
            if song_id in song_by_id:
                song = song_by_id[song_id]
                difficulty["title_localized"] = {"en": song["title_localized"]["en"] + " [Extra / rating unknown]"}
            else:
                song = {"idx": next_idx, "id": song_id,
                        "title_localized": {"en": song_id + " [Extra / rating unknown]",
                                            "zh-Hans": song_id + " [附加谱面·等级未标注]"},
                        "artist": "", "search_title": {}, "search_artist": {},
                        "bpm": format(first_bpm, "g"), "bpm_base": first_bpm,
                        "set": "offlineextras", "purchase": "", "remote_dl": False, "world_unlock": False,
                        "audioPreview": 0, "audioPreviewEnd": 15000, "side": 1, "bg": "base_conflict",
                        "date": 0, "version": "7.0", "difficulties": []}
                next_idx += 1
                songs.append(song)
                song_by_id[song_id] = song
            if not register_chart(song, difficulty, "Imported AFF; display metadata only, rating unknown"):
                raise ValueError(f"Extra AFF disappeared: {chart}")
            song["difficulties"].append(clear_gates(difficulty))
            metadata_notes.append({"id": song_id, "ratingClass": number,
                "rating": "Unknown; numeric zero is a parser-required display placeholder, not an estimated level",
                "first_aff_bpm": first_bpm, "title": song["title_localized"]["en"],
                "audio_mapping": "Bundled same-directory base.ogg; no undeclared audio override inferred"})

        # Import every local resource belonging to the imported song IDs, including
        # their complete jackets, waveform effects and unreferenced native effects.
        # Do not replace existing pack artwork or support images with older assets.
        selected_ids = set(song_by_id)
        for name in sorted(source_info):
            parts = name.split("/")
            if len(parts) >= 4 and parts[:2] == ["assets", "songs"]:
                if parts[2] in selected_ids:
                    add_import(name)
                elif parts[2] == "pack":
                    add_import(name, preserve_base=True)
        for name in tutorial | {"assets/songs/tutorial/base.ogg"}:
            if name not in base_info:
                add_import(name)
        backgrounds = sorted({value for song in songs for item in [song] + song["difficulties"]
                              for key, value in item.items() if key in ("bg", "bg_inverse")})
        for background in backgrounds:
            candidates = [f"assets/img/bg/1080/{background}{extension}" for extension in (".jpg", ".png")]
            available = next((name for name in candidates if name in base_info or name in source_info), None)
            if available is None:
                raise ValueError(f"No background resource: {background}")
            add_import(available, preserve_base=True)

        # The extra pack uses an existing, generic base pack image without altering
        # pixels; all original 62 pack records and original artwork are preserved.
        packs = copy.deepcopy(original_packlist["packs"])
        if "offlineextras" in {pack["id"] for pack in packs}:
            raise ValueError("Extra pack ID already exists")
        packs.append({"id": "offlineextras", "section": "arcaea", "plus_character": -1,
                      "name_localized": {"en": "Offline Extra Charts", "zh-Hans": "离线附加谱面"},
                      "description_localized": {"en": "Bundled extra charts. Unspecified ratings display as 0."}})
        add_import("assets/songs/pack/1080_select_offlineextras.png",
                   source_entry="assets/songs/pack/1080_select_base.png", archive=base)
        pack_ids = {pack["id"] for pack in packs}
        # "single" is a built-in virtual pack in the original engine/catalogue;
        # neither supplied packlist declares it as a normal record.
        virtual_pack_ids = {song.get("set") for song in original_songs.values()} - pack_ids - {None}
        if any(song["set"] not in pack_ids | virtual_pack_ids for song in songs):
            raise ValueError("Song references a missing pack")
        duplicate_paths = {row["path"] for row in duplicate_chart_files}
        if len(songs) != 561 or len(chart_rows) != 1839 or used_charts | duplicate_paths != all_aff - tutorial:
            raise ValueError(f"Full AFF coverage failed: {len(songs)} songs / {len(chart_rows)} charts")
        if len({song["idx"] for song in songs}) != len(songs):
            raise ValueError("Duplicate song idx after extra-song insertion")
        omitted_base_entries = sorted(name for name in base_info if name.startswith("assets/songs/dl_"))
        referenced_files = {row[key] for row in chart_rows for key in ("chart_path", "audio_path")}
        referenced_files.update(f"assets/songs/{song['id']}/{additional['file_name']}"
                                for song in songs for additional in song.get("additional_files", []))
        if referenced_files & set(omitted_base_entries) or any(song["remote_dl"] for song in songs):
            raise ValueError("Cannot omit a downloaded asset referenced by the generated offline catalogue")
        for song in songs:
            expected = [f"assets/songs/{song['id']}/{prefix}base{suffix}.jpg"
                        for prefix in ("1080_", "") for suffix in ("", "_256")]
            if not any(name in source_info or name in base_info for name in expected):
                raise ValueError(f"No base jacket for {song['id']}")

        save_json(destination / GENERATED[0], {**source_songlist, "songs": songs})
        save_json(destination / GENERATED[1], {**original_packlist, "packs": packs})
        save_json(destination / GENERATED[2], {"unlocks": []})
        base_song_keys = {key for song in original_songs.values() for key in song}
        base_diff_keys = {key for song in original_songs.values() for diff in song.get("difficulties", []) for key in diff}
        schema = {"source_song_keys_not_in_original": sorted({key for song in source_songs.values() for key in song} - base_song_keys),
                  "source_difficulty_keys_not_in_original": sorted({key for song in source_songs.values() for diff in song["difficulties"] for key in diff} - base_diff_keys),
                  "original_pack_records_preserved": 62,
                  "original_virtual_pack_ids": sorted(virtual_pack_ids),
                  "runtime_compatibility": "Same chart format and metadata schema; Android runtime remains untested"}
        summary = {"source_apk": str(source_path.resolve()), "base_apk": str(base_path.resolve()),
            "source_apk_bytes": source_path.stat().st_size, "source_declared_songs": 552,
            "source_declared_difficulties": 1833, "source_aff_count": len(all_aff),
            "songs_count": len(songs), "charts_count": len(chart_rows), "pack_count": len(packs),
            "difficulty_counts": dict(collections.Counter(row["difficulty"] for row in chart_rows)),
            "restored_previously_deleted_songs": [song for song in source_songs if original_songs.get(song, {}).get("deleted")],
            "base_only_unavailable_song_ids": sorted(set(original_songs) - set(source_songs)),
            "import_entry_count": len(imports), "import_uncompressed_bytes": sum(row["size_bytes"] for row in imports.values()),
            "import_source_compressed_bytes": sum(row["compressed_size"] for row in imports.values()),
            "omitted_base_entry_count": len(omitted_base_entries),
            "omitted_base_compressed_bytes": sum(base_info[name].compress_size for name in omitted_base_entries),
            "omitted_base_uncompressed_bytes": sum(base_info[name].file_size for name in omitted_base_entries),
            "omitted_base_reason": "Obsolete dl_* preview/jacket/download assets; every output song uses its complete local folder",
            "omitted_base_has_referenced_chart_or_audio": False,
            "preserved_existing_support_or_identical_assets": len(preserved_base_assets),
            "tutorial_charts_unchanged": 2, "audio_override_chart_count": sum(row["audio_override"] for row in chart_rows),
            "missing_additional_file_count": len(missing_additional),
            "missing_additional_song_ids": sorted({row["id"] for row in missing_additional}),
            "all_real_non_tutorial_affs_imported": True, "chart_command_counts": dict(chart_commands),
            "non_tutorial_aff_file_count": len(all_aff - tutorial),
            "duplicate_misfiled_aff_count": len(duplicate_chart_files),
            "schema_compatibility": schema}
        report = {"summary": summary, "omitted_difficulties": omitted_difficulties,
                  "missing_additional_files": missing_additional, "extra_chart_metadata": metadata_notes,
                  "duplicate_chart_files": duplicate_chart_files,
                  "charts": chart_rows, "backgrounds": backgrounds,
                  "native_followup": "Ordinary gameplay must avoid absent story videos and unlock-specific modifiers; no video was synthesized."}
        report_dir.mkdir(parents=True, exist_ok=True)
        save_json(report_dir / "full-asset-report.json", report)
        with (report_dir / "full-asset-charts.csv").open("w", newline="", encoding="utf-8-sig") as stream:
            writer = csv.DictWriter(stream, fieldnames=list(chart_rows[0]))
            writer.writeheader()
            writer.writerows(chart_rows)
        manifest = {"schema_version": 1, "source_apk": str(source_path.resolve()),
                    "base_apk": str(base_path.resolve()),
                    "imports": sorted(imports.values(), key=lambda row: row["target_entry"]),
                    "generated_entries": GENERATED, "omitted_base_entries": omitted_base_entries,
                    "songs_count": len(songs), "charts_count": len(chart_rows),
                    "report_path": str((report_dir / "full-asset-report.json").resolve()),
                    "generated_sha256": {name: hashlib.sha256((destination / name).read_bytes()).hexdigest() for name in GENERATED}}
        save_json(destination / "import-manifest.json", manifest)
        return summary


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source", type=Path, default=ROOT / "Arcaea Infinity_7.0.1f.apk")
    parser.add_argument("--base", type=Path, default=ROOT / "arcaea.apk")
    parser.add_argument("--output", type=Path, default=ROOT / "build/full-offline")
    parser.add_argument("--report-dir", type=Path, default=ROOT / "inspection/full-offline")
    args = parser.parse_args()
    result = build(args.base, args.source, args.output, args.report_dir)
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
