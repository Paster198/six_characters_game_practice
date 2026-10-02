"""Apply narrowly fingerprinted offline-path changes to the supplied arm64 game.

The original engine and APK remain unchanged. This does not manufacture a login,
an OnlineUser, entitlements, tokens, or a server response.
"""
from pathlib import Path
import hashlib
import json
import struct
import zipfile

ROOT = Path(__file__).resolve().parents[1]
ENTRY = 'lib/arm64-v8a/libcocos2dcpp.so'
EXPECTED_SHA256 = '72e42cb4925655ecfef98bf2dbf92a5ac05145eb005a531c96c11b927a46e6dc'

# Addresses are ELF virtual addresses, mapped through PT_LOAD below. Symbol
# identities were recovered from std::function RTTI and inspected control flow.
PATCHES = [
    {
        'name': 'startup_use_existing_no_credentials_branch',
        'address': 0x132D42C,
        'before': '607a41f9',  # ldr x0,[x19,#0x2f0]
        'branch_target': 0x132D4B4,
        'reason': 'StartScene::performExistingLoginAttempt retains readiness checks, '
                  'then follows its existing no-token path: this+0x353=1 and hides '
                  'the login wait UI. It skips both access-token and username-token requests.',
    },
    {
        'name': 'arcahv_use_ordinary_chart_loader',
        'address': 0x176B008,
        'before': 'f5020036',  # tbz w21,#0,0x176b064
        'branch_target': 0x176B064,
        'reason': 'Skip the Arcahv special challenge factory in the GameScene modifier '
                  'selector and continue with the ordinary song/chart loader. This '
                  'static change applies to all modes using this selector.',
    },
    {
        'name': 'skip_saved_registration_landing_prompt',
        'address': 0x12EF268,
        'before': '40010036',  # tbz w0,#0,0x12ef290 after named preference read
        'branch_target': 0x12EF290,
        'reason': 'Always take the existing false-preference branch after reading '
                  'showRegistrationWelcomeDialogOnLanding; leave saved preferences untouched.',
    },
    {
        'name': 'skip_saved_verification_landing_prompt',
        'address': 0x12EF2AC,
        'before': 'c0010036',  # tbz w0,#0,0x12ef2e4 after named preference read
        'branch_target': 0x12EF2E4,
        'reason': 'Always take the existing false-preference branch after reading '
                  'showVerificationPromptOnLanding; leave saved preferences untouched.',
    },
]

# StartScene's background initialization checks these exact JSON bytes before
# opening the menu. Keep its comparison/exit logic intact and update only the
# expected fingerprints to match the intentionally rebuilt offline catalogue.
METADATA_CHECKS = [
    {'entry': 'assets/songs/songlist', 'address': 0x56EF5B,
     'before': '1eb4b7a347871f43c0db99af63bdf599'},
    {'entry': 'assets/songs/packlist', 'address': 0x58C15D,
     'before': '08a76f3ccd517273f4aa71d3d6037841'},
    {'entry': 'assets/songs/unlocks', 'address': 0x58C17E,
     'before': '04ab6071bb921db76317903464c64bec'},
]


def metadata_fingerprint(data):
    inner = hashlib.md5(data).hexdigest()
    return hashlib.md5((inner + inner).encode('ascii')).hexdigest()


def file_offset(data, address, size=4, executable=True):
    if data[:6] != b'\x7fELF\x02\x01': raise ValueError('Expected little-endian ELF64')
    if struct.unpack_from('<H', data, 18)[0] != 183: raise ValueError('Expected AArch64')
    phoff = struct.unpack_from('<Q', data, 32)[0]
    phentsize, count = struct.unpack_from('<HH', data, 54)
    for index in range(count):
        pos = phoff + index*phentsize
        typ, flags, offset, va, _, filesz = struct.unpack_from('<IIQQQQ', data, pos)
        if typ == 1 and va <= address and address+size <= va+filesz:
            if executable and not flags & 1: raise ValueError('Patch target is not executable')
            if not executable and (not flags & 4 or flags & 2):
                raise ValueError('Expected readable, non-writable fingerprint data')
            return offset+address-va
    raise ValueError(f'Unmapped patch address {address:#x}')


def patch_native(original, metadata):
    digest = hashlib.sha256(original).hexdigest()
    if digest != EXPECTED_SHA256: raise ValueError(f'Unsupported original engine SHA256: {digest}')
    patched = bytearray(original)
    report = []
    occupied = set()
    for patch in PATCHES:
        address, target = patch['address'], patch['branch_target']
        offset = file_offset(original, address)
        before = bytes.fromhex(patch['before'])
        if original[offset:offset+len(before)] != before:
            raise ValueError(f'Instruction mismatch at {address:#x}')
        if (target-address) % 4 or not -(1 << 27) <= target-address < (1 << 27):
            raise ValueError('Branch displacement is not encodable')
        file_offset(original, target)
        after = struct.pack('<I', 0x14000000 | (((target-address)//4) & 0x3FFFFFF))
        if len(before) != 4 or len(after) != 4: raise ValueError('Expected one AArch64 instruction')
        if occupied.intersection(range(offset, offset+4)): raise ValueError('Overlapping patches')
        occupied.update(range(offset, offset+4))
        patched[offset:offset+4] = after
        report.append({**patch, 'address': hex(address), 'branch_target': hex(target),
                       'file_offset': hex(offset), 'after': after.hex()})
    for check in METADATA_CHECKS:
        offset = file_offset(original, check['address'], size=33, executable=False)
        before = check['before'].encode('ascii')
        if original[offset:offset+33] != before + b'\0':
            raise ValueError(f"Original metadata fingerprint mismatch: {check['entry']}")
        after = metadata_fingerprint(metadata[check['entry']]).encode('ascii')
        if len(after) != 32 or occupied.intersection(range(offset, offset+32)):
            raise ValueError('Invalid or overlapping fingerprint replacement')
        occupied.update(range(offset, offset+32))
        patched[offset:offset+32] = after
        report.append({**check, 'name': 'startup_metadata_fingerprint',
                       'address': hex(check['address']), 'file_offset': hex(offset),
                       'after': after.decode('ascii'),
                       'algorithm': 'MD5(ASCII(MD5(data).hex repeated twice))'})
    # Only listed instructions and fingerprint constants may change.
    changed = {i for i, (a,b) in enumerate(zip(original, patched)) if a != b}
    if not changed.issubset(occupied) or len(original) != len(patched):
        raise AssertionError('Unexpected binary modification')
    for patch in report:
        if 'branch_target' not in patch:
            continue
        word = struct.unpack_from('<I', patched, int(patch['file_offset'],16))[0]
        imm = word & 0x3FFFFFF
        if imm & 0x2000000: imm -= 0x4000000
        if word >> 26 != 5 or int(patch['address'],16)+imm*4 != int(patch['branch_target'],16):
            raise AssertionError('Incorrect encoded branch')
    return bytes(patched), report


def main():
    with zipfile.ZipFile(ROOT / 'arcaea.apk') as source:
        original = source.read(ENTRY)
        for check in METADATA_CHECKS:
            if metadata_fingerprint(source.read(check['entry'])) != check['before']:
                raise ValueError(f"Original resource does not match the engine: {check['entry']}")
    metadata = {check['entry']: (ROOT / 'build/offline' / check['entry']).read_bytes()
                for check in METADATA_CHECKS}
    patched, changes = patch_native(original, metadata)
    destination = ROOT / 'build/offline' / ENTRY
    destination.parent.mkdir(parents=True, exist_ok=True)
    destination.write_bytes(patched)
    report = {'input_sha256': EXPECTED_SHA256,
              'output_sha256': hashlib.sha256(patched).hexdigest(),
              'entry': ENTRY, 'patches': changes,
              'validation': 'Static instruction/ELF checks only; Android runtime untested.'}
    (ROOT / 'build/offline/native-report.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
    print(f'Prepared offline arm64 engine: {len(PATCHES)} branch patches, '
          f'{len(METADATA_CHECKS)} matching startup metadata fingerprints')


if __name__ == '__main__': main()
