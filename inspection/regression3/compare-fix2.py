"""Check the final APK only changes the intended instruction from fix2."""
from pathlib import Path
import hashlib
import json
import re
import sys
import zipfile

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'tools'))
from package_full_apk import FINAL
from prepare_offline_characters import _offset

ENGINE = 'lib/arm64-v8a/libcocos2dcpp.so'
with zipfile.ZipFile(ROOT / 'arcaea-full-offline-practice-arm64-fix2.apk') as old:
    with zipfile.ZipFile(FINAL) as new:
        assert set(old.namelist()) == set(new.namelist()), 'Unexpected entry changes'
        retained = 0
        signing_entries = []
        for name in old.namelist():
            if name == ENGINE:
                continue
            # APK signatures and the JAR manifest must reflect the engine edit.
            # The build separately verifies the resulting signature/certificate.
            if re.fullmatch(r'META-INF/(MANIFEST\.MF|[^/]+\.(SF|RSA|DSA|EC))', name, re.I):
                signing_entries.append(name)
                continue
            before, after = old.getinfo(name), new.getinfo(name)
            assert (before.CRC, before.file_size) == (after.CRC, after.file_size), name
            retained += 1
        before, after = old.read(ENGINE), new.read(ENGINE)
        offset = _offset(before, 0xA16FF8, 4)
        assert before[offset:offset+4].hex() == '48100034'
        assert after[offset:offset+4].hex() == 'c8210034'
        assert before[:offset] == after[:offset]
        assert before[offset+4:] == after[offset+4:]
        # Compare bridge executables byte-for-byte, beyond their ZIP CRC.
        bridge_hashes = {}
        for name in ('classes2.dex', 'classes3.dex', 'lib/arm64-v8a/libpractice.so'):
            payload = new.read(name)
            assert old.read(name) == payload, name
            bridge_hashes[name] = hashlib.sha256(payload).hexdigest()

report = {
    'apk': FINAL.name,
    'unchanged_entry_payloads_by_crc_and_size': retained,
    'signing_metadata_excluded': signing_entries,
    'engine_change': 'Only instruction at 0xa16ff8 changes; all other engine bytes match fix2',
    'identical_practice_bridge_sha256': bridge_hashes,
    'android_runtime_test': 'not performed: no test device',
}
(ROOT / 'inspection/regression3/fix2-comparison.json').write_text(
    json.dumps(report, indent=2), encoding='utf-8')
print(json.dumps(report, indent=2))
