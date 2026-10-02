"""Repack the supplied APK without touching its original bytes on disk.

The output targets arm64 only: shipping the original 32-bit engine alongside a
64-bit-only adapter would silently omit practice on 32-bit processes.
"""
from pathlib import Path
import hashlib
import json
import re
import shutil
import zipfile
import argparse

# APK readers use the ordinary ZIP format. This 2.2 GB package is below ZIP's
# actual 4 GiB ceiling, but above Python's conservative signed-32-bit threshold.
zipfile.ZIP64_LIMIT = 0xFFFFFFFF

ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / 'arcaea.apk'
OUTPUT = ROOT / 'build/arcaea-practice-unsigned.apk'
REPLACEMENTS = {
    'classes2.dex': ROOT / 'build/classes2.dex',
    'classes3.dex': ROOT / 'build/dex-bridge/classes.dex',
    'lib/arm64-v8a/libpractice.so': ROOT / 'build/libpractice.so',
}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--offline', action='store_true', help='Include prepared offline manifest, native adapter and catalogue')
    args = parser.parse_args()
    replacements = dict(REPLACEMENTS)
    output = OUTPUT
    if args.offline:
        for name in ('AndroidManifest.xml', 'lib/arm64-v8a/libcocos2dcpp.so',
                     'assets/songs/songlist', 'assets/songs/packlist', 'assets/songs/unlocks',
                     'assets/layouts/mainmenu/MainMenu.csb', 'assets/layouts/topbar/TopBar.csb'):
            replacements[name] = ROOT / 'build/offline' / name
        output = ROOT / 'build/arcaea-offline-practice-unsigned.apk'
    for source in replacements.values():
        if not source.is_file():
            raise FileNotFoundError(source)
    removed = []
    with zipfile.ZipFile(SOURCE) as source, zipfile.ZipFile(output, 'w', allowZip64=False) as target:
        if 'classes3.dex' in source.namelist():
            raise ValueError('Input already contains classes3.dex; refusing to overwrite unknown classes')
        if args.offline:
            from prepare_offline_native import METADATA_CHECKS, patch_native
            metadata = {check['entry']: replacements[check['entry']].read_bytes() for check in METADATA_CHECKS}
            engine = 'lib/arm64-v8a/libcocos2dcpp.so'
            expected_engine = patch_native(source.read(engine), metadata)[0]
            if replacements[engine].read_bytes() != expected_engine:
                raise ValueError('Offline engine is stale or its startup fingerprints do not match the catalogue')
        for info in source.infolist():
            name = info.filename
            if name.startswith('lib/armeabi-v7a/') or re.fullmatch(r'META-INF/(MANIFEST\.MF|[^/]+\.(SF|RSA|DSA|EC))', name, re.I):
                removed.append(name)
                continue
            if name in replacements:
                continue
            # Preserves stored song payloads and entry metadata, streaming large files.
            with source.open(info) as stream, target.open(info, 'w') as destination:
                shutil.copyfileobj(stream, destination, 1024 * 1024)
        for name, path in replacements.items():
            target.write(path, name, compress_type=zipfile.ZIP_DEFLATED, compresslevel=6)
    report = {
        'input': SOURCE.name,
        'output': output.name,
        'offline': args.offline,
        'architecture': 'arm64-v8a',
        'added_or_replaced': {name: hashlib.sha256(path.read_bytes()).hexdigest() for name, path in replacements.items()},
        'removed': removed,
    }
    report_path = 'build/offline-package-manifest.json' if args.offline else 'build/package-manifest.json'
    (ROOT / report_path).write_text(json.dumps(report, indent=2), encoding='utf-8')
    print(f'Created {output.name}: {output.stat().st_size:,} bytes')


if __name__ == '__main__':
    main()
