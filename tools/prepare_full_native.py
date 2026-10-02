"""Combine verified offline startup and full catalogue availability changes."""
from pathlib import Path
import hashlib
import json
import zipfile

from prepare_offline_native import ENTRY, METADATA_CHECKS, patch_native

ROOT = Path(__file__).resolve().parents[1]
PREPARED = ROOT / 'build/full-offline'


def build_full_engine(original, metadata):
    from prepare_offline_characters import patch_additions
    offline, first_report = patch_native(original, metadata)
    result, additional_report = patch_additions(original, offline)
    return result, {'offline': first_report, 'full_catalogue': additional_report}


def main():
    with zipfile.ZipFile(ROOT / 'arcaea.apk') as apk:
        original = apk.read(ENTRY)
    metadata = {row['entry']: (PREPARED / row['entry']).read_bytes() for row in METADATA_CHECKS}
    engine, report = build_full_engine(original, metadata)
    output = PREPARED / ENTRY
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_bytes(engine)
    report['output_sha256'] = hashlib.sha256(engine).hexdigest()
    report['android_runtime_test'] = 'not performed'
    (PREPARED / 'native-report.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
    print('Full catalogue engine prepared with matching startup fingerprints.')


if __name__ == '__main__':
    main()
