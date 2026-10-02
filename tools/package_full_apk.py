"""Stream the user's complete song assets into the verified practice APK base."""
from contextlib import ExitStack
from copy import copy
from pathlib import Path
import hashlib
import json
import re
import shutil
import zipfile

ROOT = Path(__file__).resolve().parents[1]
PREPARED = ROOT / 'build/full-offline'
SOURCE = ROOT / 'arcaea.apk'
OUTPUT = ROOT / 'build/arcaea-full-offline-practice-unsigned.apk'
FINAL = ROOT / 'arcaea-full-offline-practice-arm64-fix4.apk'
IMPORT_MANIFEST = PREPARED / 'import-manifest.json'
# Android uses ordinary ZIP, whose offsets have a true 4 GiB ceiling.
zipfile.ZIP64_LIMIT = 0xFFFFFFFF


def digest(path):
    h = hashlib.sha256()
    with Path(path).open('rb') as stream:
        for chunk in iter(lambda: stream.read(1024*1024), b''):
            h.update(chunk)
    return h.hexdigest()


def removed_entry(name):
    return name.startswith('lib/armeabi-v7a/') or bool(re.fullmatch(
        r'META-INF/(MANIFEST\.MF|[^/]+\.(SF|RSA|DSA|EC))', name, re.I))


def load_plan():
    manifest = json.loads(IMPORT_MANIFEST.read_text(encoding='utf-8'))
    imports = {}
    for item in manifest['imports']:
        name = item['target_entry']
        if not name.startswith('assets/') or '..' in Path(name).parts:
            raise ValueError(f'Unexpected imported resource path: {name}')
        if name in imports:
            raise ValueError(f'Duplicate import: {name}')
        imports[name] = {**item, 'source_apk': item.get('source_apk', manifest['source_apk'])}
    generated = {
        'classes2.dex': ROOT / 'build/classes2.dex',
        'classes3.dex': ROOT / 'build/dex-bridge/classes.dex',
        'lib/arm64-v8a/libpractice.so': ROOT / 'build/libpractice.so',
        'lib/arm64-v8a/libcocos2dcpp.so': PREPARED / 'lib/arm64-v8a/libcocos2dcpp.so',
        'AndroidManifest.xml': ROOT / 'build/offline/AndroidManifest.xml',
        'assets/layouts/mainmenu/MainMenu.csb': ROOT / 'build/offline/assets/layouts/mainmenu/MainMenu.csb',
        'assets/layouts/topbar/TopBar.csb': ROOT / 'build/offline/assets/layouts/topbar/TopBar.csb',
    }
    for name in manifest['generated_entries']:
        generated[name] = PREPARED / name
    # Generated catalogue and selected UI/native edits take priority over imports.
    for name in generated:
        imports.pop(name, None)
    for path in generated.values():
        if not path.is_file():
            raise FileNotFoundError(path)
    return manifest, imports, generated


def main():
    manifest, imports, generated = load_plan()
    omitted = set(manifest.get('omitted_base_entries', []))
    with ExitStack() as stack:
        archives = {}
        def archive(path):
            key = str(Path(path).resolve())
            if key not in archives:
                archives[key] = stack.enter_context(zipfile.ZipFile(key))
                names = archives[key].namelist()
                if len(names) != len(set(names)):
                    raise ValueError(f'Duplicate input ZIP names: {key}')
            return archives[key]
        base = archive(SOURCE)
        from prepare_full_native import build_full_engine
        from prepare_offline_native import METADATA_CHECKS
        metadata = {row['entry']: generated[row['entry']].read_bytes() for row in METADATA_CHECKS}
        engine = 'lib/arm64-v8a/libcocos2dcpp.so'
        if generated[engine].read_bytes() != build_full_engine(base.read(engine), metadata)[0]:
            raise ValueError('Full offline engine or startup metadata fingerprints are stale')
        if 'classes3.dex' in base.namelist():
            raise ValueError('Original APK unexpectedly contains the practice bridge')
        retained = [i for i in base.infolist() if i.filename not in generated
                    and i.filename not in imports and i.filename not in omitted
                    and not removed_entry(i.filename)]
        imported = []
        for target_name, row in imports.items():
            src = archive(row['source_apk'])
            info = src.getinfo(row['source_entry'])
            if (info.CRC, info.file_size) != (row['crc32'], row['size_bytes']):
                raise ValueError(f'Import changed after inventory: {row["source_entry"]}')
            imported.append((target_name, row, src, info))
        estimate = sum(i.compress_size for i in retained) + sum(i.compress_size for _, _, _, i in imported)
        estimate += sum(path.stat().st_size for path in generated.values()) + 8*1024*1024
        if estimate >= 0xFFFFFFFF:
            raise ValueError(f'Conservative APK size estimate exceeds ordinary ZIP: {estimate}')
        with zipfile.ZipFile(OUTPUT, 'w', allowZip64=False) as target:
            for info in retained:
                with base.open(info) as stream, target.open(copy(info), 'w') as out:
                    shutil.copyfileobj(stream, out, 1024*1024)
            for target_name, row, src, info in imported:
                dest_info = copy(info)
                dest_info.filename = target_name
                dest_info.orig_filename = target_name
                with src.open(info) as stream, target.open(dest_info, 'w') as out:
                    shutil.copyfileobj(stream, out, 1024*1024)
            for name, path in generated.items():
                target.write(path, name, compress_type=zipfile.ZIP_DEFLATED, compresslevel=6)
    report = {
        'base_apk': SOURCE.name, 'resource_apk': manifest['source_apk'],
        'unsigned_apk': OUTPUT.name, 'final_apk': FINAL.name,
        'size_bytes': OUTPUT.stat().st_size, 'architecture': 'arm64-v8a',
        'retained_entries': len(retained), 'imported_entries': len(imported),
        'generated': {name: digest(path) for name, path in generated.items()},
        'songs': manifest['songs_count'], 'charts': manifest['charts_count'],
    }
    (ROOT / 'build/full-package-manifest.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
    print(json.dumps(report, indent=2))


if __name__ == '__main__':
    main()
