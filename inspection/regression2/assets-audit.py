"""Independent asset regression checks; reads APKs and generated metadata only."""
import io
import json
from pathlib import Path
import struct
import sys
import zipfile

from PIL import Image

ROOT = Path(__file__).resolve().parents[2]
sys.stdout.reconfigure(encoding="utf-8")
generated = ROOT / "build/regression2-assets/assets/songs/songlist"
new = json.loads(generated.read_text(encoding="utf-8"))["songs"]
previous = json.loads((ROOT / "build/full-offline/assets/songs/songlist").read_text(encoding="utf-8"))["songs"]
assert len(new) == len(previous) == 561
assert sum(len(s["difficulties"]) for s in new) == 1839
metadata_changes = []
for old, song in zip(previous, new):
    assert old["id"] == song["id"]
    expected = json.loads(json.dumps(old))
    for d in expected["difficulties"]:
        d["world_unlock"] = False
        d["hidden_until"] = ""
    assert song == expected, song["id"]
    for old_d, d in zip(old["difficulties"], song["difficulties"]):
        assert d["world_unlock"] is False and d["hidden_until"] == ""
        if old_d != d:
            metadata_changes.append([song["id"], d["ratingClass"]])

target_songs = [s for s in new if s["set"] in ("vs", "konzetsu") or s["id"] == "diein"]
images, audio, song_assets, errors = [], [], [], []


def ogg_duration(data):
    """Read Vorbis identification and complete Ogg page framing, no decoder substitute."""
    ident = data.find(b"\x01vorbis")
    assert ident >= 0, "No Vorbis identification packet"
    sample_rate = struct.unpack_from("<I", data, ident + 12)[0]
    assert sample_rate > 0
    pos = 0
    last_granule = 0
    pages = 0
    while pos < len(data):
        assert data[pos:pos + 4] == b"OggS", f"Bad page at {pos}"
        assert data[pos + 4] == 0
        granule = struct.unpack_from("<Q", data, pos + 6)[0]
        count = data[pos + 26]
        body = sum(data[pos + 27:pos + 27 + count])
        next_pos = pos + 27 + count + body
        assert next_pos <= len(data), "Truncated page"
        if granule != 0xFFFFFFFFFFFFFFFF:
            last_granule = granule
        pos = next_pos
        pages += 1
    return {"sample_rate": sample_rate, "pages": pages, "duration_ms": last_granule * 1000 / sample_rate}


with zipfile.ZipFile(ROOT / "arcaea-full-offline-practice-arm64-test.apk") as built, \
        zipfile.ZipFile(ROOT / "arcaea.apk") as base, \
        zipfile.ZipFile(ROOT / "Arcaea Infinity_7.0.1f.apk") as source:
    selected_names = set()
    for song in target_songs:
        prefix = f"assets/songs/{song['id']}/"
        folder = [n for n in source.namelist() if n.startswith(prefix)]
        for name in folder:
            a, b = source.getinfo(name), built.getinfo(name)
            assert (a.CRC, a.file_size) == (b.CRC, b.file_size), name
            song_assets.append(name)
            if name.endswith((".jpg", ".png")):
                selected_names.add(name)
        for item in [song] + song["difficulties"]:
            for key in ("bg", "bg_inverse"):
                if key not in item:
                    continue
                bg = item[key]
                for suffix in (".jpg", ".png", "_clear.png"):
                    name = f"assets/img/bg/1080/{bg}{suffix}"
                    if name in base.namelist():
                        assert built.getinfo(name).CRC == base.getinfo(name).CRC
                        selected_names.add(name)
        music = f"assets/songs/{song['id']}/base.ogg"
        record = {"id": song["id"], "path": music, **ogg_duration(built.read(music))}
        record["preview_start_ms"] = song["audioPreview"]
        record["preview_end_ms"] = song["audioPreviewEnd"]
        assert 0 <= record["preview_start_ms"] <= record["preview_end_ms"] <= record["duration_ms"]
        audio.append(record)
    for name in ("assets/songs/pack/1080_select_vs.png", "assets/songs/pack/1080_select_konzetsu.png",
                 "assets/img/jacket_locked_konzetsu.jpg"):
        assert built.getinfo(name).CRC == base.getinfo(name).CRC
        selected_names.add(name)
    for name in sorted(selected_names):
        try:
            with Image.open(io.BytesIO(built.read(name))) as im:
                im.load()
                images.append({"path": name, "format": im.format, "mode": im.mode, "size": list(im.size)})
        except Exception as error:
            errors.append({"path": name, "error": str(error)})
    # The two real pack records are retained byte-equivalent as parsed objects.
    old_packs = {p["id"]: p for p in json.loads(base.read("assets/songs/packlist"))["packs"]}
    built_packs = {p["id"]: p for p in json.loads(built.read("assets/songs/packlist"))["packs"]}
    assert all(old_packs[k] == built_packs[k] for k in ("vs", "konzetsu"))

report = {"corrected_difficulties": len(metadata_changes), "metadata_changes": metadata_changes,
          "songs": [s["id"] for s in target_songs], "verified_song_resources": len(song_assets),
          "decoded_images": images, "ogg_page_validation": audio, "errors": errors,
          "limitations": "Ogg framing and timing only, not real FMOD playback; no Android device execution"}
(ROOT / "inspection/regression2/assets-audit.json").write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
assert not errors, errors
print(json.dumps({k: report[k] for k in ("corrected_difficulties", "songs", "verified_song_resources", "errors")}, ensure_ascii=False))
print(f"Decoded {len(images)} image files; checked {len(audio)} full Ogg page streams and preview bounds.")
