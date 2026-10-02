"""Read-only, fingerprinted evidence extraction for the offline native review."""
import hashlib
import io
import json
import sys
from contextlib import redirect_stdout
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'inspection/native'))
from analyze import data, dis, read, calls

EXPECTED = '72e42cb4925655ecfef98bf2dbf92a5ac05145eb005a531c96c11b927a46e6dc'
assert hashlib.sha256(data).hexdigest() == EXPECTED, 'Unsupported engine'
assert read(0x176b008, 4).hex() == 'f5020036'
MODIFIERS = '''axiumcrisis antagonism dantalion equilibrium ifi etherstrike
singularity tempestissimo aegleseeker testify arcahv last lasteternity arghena
desive alterego designant lamentrain yourbestnightmare dreadarea cataclysmcry
deinosphainein ember'''.split()
songlist = json.loads((ROOT / 'build/offline/assets/songs/songlist').read_text(encoding='utf-8'))
retained = [s['id'] for s in songlist['songs']]
intersection = sorted(set(retained) & set(MODIFIERS))
assert intersection == ['arcahv'], intersection
windows = {
    'arcahv_factory_branch': (0x176afd8, 0x90),
    'song_lookup_missing_returns_null': (0x19e8f54, 0x70),
    'song_selection_null_guard': (0x10b0270, 0x40),
    'song_selection_difficulty_fallback': (0x10b034c, 0x34),
    'song_difficulty_flag_check': (0x8bed58, 0x2c),
    'pack_lookup_missing_returns_null': (0xeb0a94, 0x44),
    'pack_selection_null_guard': (0x16f60b0, 0x48),
    'pack_selection_all_fallback': (0x16f61c0, 0x80),
    'songlist_max_idx': (0x193efa8, 0x38),
    'topbar_status_visibility': (0x14b9af8, 0x90),
}
out = io.StringIO()
with redirect_stdout(out):
    print('Input SHA256:', EXPECTED)
    print('Retained songs:', len(retained))
    print('Retained modifier intersections:', intersection)
    print('Direct getSong calls in StartScene / MainMenu init:',
          [hex(site) for site, fn, target in calls([0x19e8f54])
           if fn in (0x121de7c, 0x913f10)])
    for name, (address, size) in windows.items():
        print('\n' + name)
        dis(address, size)
target = ROOT / 'inspection/offline/native-evidence.txt'
target.write_text(out.getvalue(), encoding='utf-8')
print(target)
