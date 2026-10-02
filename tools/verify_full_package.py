"""Verify actual full APK resources, startup checks and verified native patches."""
from collections import Counter
from contextlib import ExitStack
import hashlib
import json
import zipfile

from package_full_apk import ROOT, SOURCE, PREPARED, FINAL, load_plan, removed_entry, digest
from prepare_full_native import build_full_engine
from prepare_offline_native import METADATA_CHECKS, file_offset
from prepare_offline_manifest import patch_manifest
from prepare_offline_layouts import LAYOUTS, patch_layout


def startup_digest(payload):
    # Independently calculate the runtime's MD5(hex(MD5(data)) repeated twice).
    first = hashlib.md5(payload).hexdigest().encode('ascii')
    return hashlib.md5(first + first).hexdigest().encode('ascii')


def main():
    manifest, imports, generated = load_plan()
    omitted = set(manifest.get('omitted_base_entries', []))
    with ExitStack() as stack:
        base = stack.enter_context(zipfile.ZipFile(SOURCE))
        apk = stack.enter_context(zipfile.ZipFile(FINAL))
        names = apk.namelist()
        assert len(names) == len(set(names)), 'Duplicate output names'
        assert apk.testzip() is None, 'ZIP CRC check failed'
        assert not any(name.startswith('lib/armeabi-v7a/') for name in names)
        retained = 0
        for original in base.infolist():
            name = original.filename
            if name in generated or name in imports or name in omitted or removed_entry(name):
                continue
            actual = apk.getinfo(name)
            assert (actual.CRC, actual.file_size) == (original.CRC, original.file_size), name
            retained += 1
        for name, row in imports.items():
            actual = apk.getinfo(name)
            assert (actual.CRC, actual.file_size) == (row['crc32'], row['size_bytes']), name
        for name, path in generated.items():
            assert hashlib.sha256(apk.read(name)).hexdigest() == digest(path), name
        expected_names = {i.filename for i in base.infolist()
                          if i.filename not in omitted and not removed_entry(i.filename)} | set(imports) | set(generated)
        assert {name for name in names if not removed_entry(name)} == expected_names
        assert apk.read('AndroidManifest.xml') == patch_manifest(base.read('AndroidManifest.xml'))[0]
        for name, spec in LAYOUTS.items():
            assert apk.read(name) == patch_layout(base.read(name), spec)[0]
        catalogue = json.loads(apk.read('assets/songs/songlist'))['songs']
        packs = json.loads(apk.read('assets/songs/packlist'))['packs']
        pack_ids = {p['id'] for p in packs}
        assert len(catalogue) == manifest['songs_count']
        assert len({s['id'] for s in catalogue}) == len(catalogue)
        charts = []
        audio_files = set()
        chart_classes = Counter()
        for song in catalogue:
            assert song['remote_dl'] is False and song['purchase'] == '' and not song['world_unlock'], song['id']
            assert song['set'] in pack_ids or song['set'] == 'single', song['id']
            for diff in song['difficulties']:
                # Deleting these keys reactivates the native BYD defaults.
                # Check actual packaged JSON, not only the generator's intent.
                assert diff.get('world_unlock') is False, (song['id'], diff['ratingClass'], 'world_unlock')
                assert diff.get('hidden_until') == '', (song['id'], diff['ratingClass'], 'hidden_until')
                prefix = 'assets/songs/' + song['id'] + '/'
                chart = prefix + str(diff['ratingClass']) + '.aff'
                data = apk.read(chart).decode('utf-8-sig')
                assert data.startswith('AudioOffset:') and '\n-' in data and 'timing(' in data, chart
                audio = prefix + (str(diff['ratingClass'])+'.ogg' if diff.get('audioOverride') else 'base.ogg')
                audio_files.add(audio)
                charts.append(chart)
                chart_classes[str(diff['ratingClass'])] += 1
            for additional in song.get('additional_files', []):
                assert 'assets/songs/'+song['id']+'/'+additional['file_name'] in names
        assert len(charts) == len(set(charts)) == manifest['charts_count']
        for name in audio_files:
            with apk.open(name) as stream:
                assert stream.read(4) == b'OggS', name
        assert json.loads(apk.read('assets/songs/unlocks'))['unlocks'] == []
        engine_path = 'lib/arm64-v8a/libcocos2dcpp.so'
        engine = apk.read(engine_path)
        original_engine = base.read(engine_path)
        metadata = {row['entry']: apk.read(row['entry']) for row in METADATA_CHECKS}
        assert engine == build_full_engine(original_engine, metadata)[0]
        for row in METADATA_CHECKS:
            pos = file_offset(original_engine, row['address'], 33, False)
            assert engine[pos:pos+33] == startup_digest(metadata[row['entry']]) + b'\0'
        # Preserve the runtime's verification code, including its failure branch.
        assert engine[0x13DAFD0:0x13DB67C] == original_engine[0x13DAFD0:0x13DB67C]
    report = {
        'apk': FINAL.name, 'bytes': FINAL.stat().st_size, 'sha256': digest(FINAL),
        'songs': len(catalogue), 'charts': len(charts), 'charts_by_class': dict(chart_classes),
        'full_audio_files_used': len(audio_files), 'retained_payloads': retained,
        'imported_payloads': len(imports), 'zip_crc': 'passed',
        'startup_fingerprints': 'all three match actual packaged metadata; verification code preserved',
        'native_and_layout_patches': 'matched verified outputs',
        'android_runtime_test': 'not performed: no test device',
    }
    (ROOT / 'build/full-final-verification.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
    print(json.dumps(report, indent=2))


if __name__ == '__main__':
    main()
