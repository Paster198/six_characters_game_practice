"""Read-only reproduction of the startup metadata checksum failure.

This script only creates evidence files under inspection/crash. It does not
modify assets, build scripts, APKs, or native libraries.
"""
import hashlib
import io
import json
import sys
import zipfile
from contextlib import redirect_stdout
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'inspection/native'))
from analyze import data, elf, secs, off, ptr, cstr, dis, read

EXPECTED_ENGINE = '72e42cb4925655ecfef98bf2dbf92a5ac05145eb005a531c96c11b927a46e6dc'
assert hashlib.sha256(data).hexdigest() == EXPECTED_ENGINE

def digest(content):
    inner = hashlib.md5(content).hexdigest()
    return hashlib.md5((inner + inner).encode('ascii')).hexdigest()

MAPPING = [
    ('songlist', 0x56ef5b, 0x1bcacd0),
    ('packlist', 0x58c15d, 0x1bcace0),
    ('unlocks', 0x58c17e, 0x1bcac30),
]
results = []
with zipfile.ZipFile(ROOT / 'arcaea.apk') as apk:
    for name, address, global_address in MAPPING:
        asset = 'assets/songs/' + name
        original = apk.read(asset)
        replacement = (ROOT / 'build/offline' / asset).read_bytes()
        native_expected = cstr(address)
        assert ptr(global_address) == address
        assert digest(original) == native_expected
        assert len(native_expected) == 32
        assert read(address + 32, 1) == b'\0'
        results.append({
            'asset': asset,
            'constant_va': hex(address),
            'constant_file_offset': hex(off(address)),
            'global_pointer_va': hex(global_address),
            'original_sha256': hashlib.sha256(original).hexdigest(),
            'replacement_sha256': hashlib.sha256(replacement).hexdigest(),
            'original_native_digest': native_expected,
            'original_recomputed_digest': digest(original),
            'replacement_digest': digest(replacement),
            'original_matches': digest(original) == native_expected,
            'replacement_matches_old_constant': digest(replacement) == native_expected,
        })

dynsym = secs['.dynsym']
exit_symbol = [dynsym.get_symbol(r['r_info_sym']).name
               for r in secs['.rela.plt'].iter_relocations()
               if r['r_offset'] == 0x1b85f60]
assert exit_symbol == ['exit']
assert ptr(0x1aa26c0 + 0x30) == 0x13dafd0
callback_name = cstr(ptr(ptr(0x1aa26c0 - 8) + 8))
assert 'StartScene4initEv' in callback_name

report = {
    'engine_sha256': EXPECTED_ENGINE,
    'algorithm': 'md5((md5(asset_bytes).hexdigest() * 2).encode("ascii")).hexdigest()',
    'startup_callback_rtti': callback_name,
    'callback_vtable': '0x1aa26c0',
    'callback_invoke': '0x13dafd0',
    'exit_plt': '0x1a5bb20',
    'exit_got': '0x1b85f60',
    'exit_symbol': exit_symbol[0],
    'files': results,
}
out = ROOT / 'inspection/crash'
out.mkdir(parents=True, exist_ok=True)
(out / 'metadata-integrity-evidence.json').write_text(json.dumps(report, indent=2) + '\n', encoding='utf-8')
stream = io.StringIO()
with redirect_stdout(stream):
    for name, start, size in [
        ('StartScene init installs integrity task', 0x121ef58, 0x90),
        ('Task reads the three assets', 0x13db09c, 0x1c0),
        ('Task checks expected strings', 0x13db3d4, 0xdc),
        ('Mismatch invokes exit(0)', 0x13db670, 0x10),
        ('exit PLT', 0x1a5bb20, 0x10),
        ('Original startup branch register/state safety', 0x132d3d8, 0x13c),
        ('Original landing branch targets', 0x12ef23c, 0xd0),
    ]:
        print('\n' + name)
        dis(start, size)
(out / 'native-control-flow-evidence.txt').write_text(stream.getvalue(), encoding='utf-8')
print(json.dumps(report, indent=2))
