"""Verify final APK integrity and exact payload preservation against the input."""
from pathlib import Path
import hashlib
import json
import zipfile
import argparse

ROOT = Path(__file__).resolve().parents[1]

def digest(path):
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b''):
            h.update(chunk)
    return h.hexdigest()

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--offline', action='store_true')
    args = parser.parse_args()
    final = ROOT / ('arcaea-offline-practice-arm64-fix1.apk' if args.offline else 'arcaea-practice-arm64-test.apk')
    replacements = {
        'classes2.dex': ROOT / 'build/classes2.dex',
        'classes3.dex': ROOT / 'build/dex-bridge/classes.dex',
        'lib/arm64-v8a/libpractice.so': ROOT / 'build/libpractice.so',
    }
    if args.offline:
        for name in ('AndroidManifest.xml', 'lib/arm64-v8a/libcocos2dcpp.so',
                     'assets/songs/songlist', 'assets/songs/packlist', 'assets/songs/unlocks',
                     'assets/layouts/mainmenu/MainMenu.csb', 'assets/layouts/topbar/TopBar.csb'):
            replacements[name] = ROOT / 'build/offline' / name
    same = 0
    with zipfile.ZipFile(ROOT / 'arcaea.apk') as source, zipfile.ZipFile(final) as target:
        assert len(target.namelist()) == len(set(target.namelist())), 'Duplicate ZIP entries'
        assert target.testzip() is None, 'ZIP CRC integrity failure'
        for entry in source.infolist():
            name = entry.filename
            if name.startswith(('lib/armeabi-v7a/', 'META-INF/')) or name in replacements:
                continue
            check = target.getinfo(name)
            assert (check.CRC, check.file_size) == (entry.CRC, entry.file_size), name
            same += 1
        for name, path in replacements.items():
            assert hashlib.sha256(target.read(name)).hexdigest() == digest(path), name
        assert not any(n.startswith('lib/armeabi-v7a/') for n in target.namelist())
        if not args.offline:
            assert target.read('AndroidManifest.xml') == source.read('AndroidManifest.xml')
        else:
            from prepare_offline_manifest import patch_manifest
            assert target.read('AndroidManifest.xml') == patch_manifest(source.read('AndroidManifest.xml'))[0]
            catalogue = json.loads(target.read('assets/songs/songlist'))
            assert len(catalogue['songs']) == 31
            assert sum(len(s['difficulties']) for s in catalogue['songs']) == 100
            for song in catalogue['songs']:
                assert song['remote_dl'] is False and song['purchase'] == '' and not song['world_unlock']
                for difficulty in song['difficulties']:
                    prefix = 'assets/songs/' + song['id'] + '/'
                    chart = target.read(prefix + str(difficulty['ratingClass']) + '.aff')
                    audio = prefix + (str(difficulty['ratingClass']) + '.ogg' if difficulty.get('audioOverride') else 'base.ogg')
                    assert chart.startswith(b'AudioOffset:') and b'timing(' in chart
                    with target.open(audio) as stream:
                        assert stream.read(4) == b'OggS'
            from prepare_offline_native import METADATA_CHECKS, patch_native
            engine_path = 'lib/arm64-v8a/libcocos2dcpp.so'
            packaged_metadata = {check['entry']: target.read(check['entry']) for check in METADATA_CHECKS}
            assert target.read(engine_path) == patch_native(source.read(engine_path), packaged_metadata)[0]
            from prepare_offline_layouts import LAYOUTS, patch_layout
            for entry, specification in LAYOUTS.items():
                assert target.read(entry) == patch_layout(source.read(entry), specification)[0]
            assert json.loads(target.read('assets/songs/unlocks')) == {'unlocks': []}
            packs = json.loads(target.read('assets/songs/packlist'))['packs']
            assert len(packs) == 1 and packs[0]['id'] == 'base'
    result = {'apk': final.name, 'size_bytes': final.stat().st_size,
              'sha256': digest(final), 'original_sha256': digest(ROOT / 'arcaea.apk'),
              'unchanged_payload_entries': same, 'zip_crc': 'passed',
              'new_payload_hashes': 'matched build outputs',
              'android_runtime_test': 'not performed: no connected device'}
    if args.offline:
        result['offline_catalogue'] = {'songs': 31, 'charts': 100}
        result['offline_patch_verification'] = 'manifest, native branches, startup metadata fingerprints, Cocos layouts and local song assets passed'
    report_path = 'build/offline-final-verification.json' if args.offline else 'build/final-verification.json'
    (ROOT / report_path).write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps(result, indent=2))

if __name__ == '__main__':
    main()
