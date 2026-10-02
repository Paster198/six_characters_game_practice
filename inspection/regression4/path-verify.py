"""Independent local BYD AFF-path patch verification; never writes build files.

Usage: python inspection/regression4/path-verify.py PREPARED_LIB [--apk APK]
Checks bytes against the original inspected engine, models the branch using the
actual instruction words, and reads every affected chart/audio payload from APK.
This verifies file routing, not device execution. The missing-file/login callback
chain is independently checked by ui-login-unlock-evidence.py.
"""
from pathlib import Path
import argparse
import json
import struct
import sys
import zipfile
import zlib

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'inspection/native'))
import analyze as original

PATCH_VA = 0x9031D4
OLD = bytes.fromhex('00080054')
NEW = bytes.fromhex('1f2003d5')
GETTER_START = 0x903168
GETTER_END = 0x903518
LOCAL_TARGET = 0x9031D8
CACHE_TARGET = 0x9032D4


def route(data, remote, difficulty):
    """Interpret the actual CBNZ/CMP/B.EQ-or-NOP gate, not a duplicate if model."""
    regs = {8: int(remote), 20: difficulty}
    pc = 0x9031CC
    zero = False
    visited = []
    while pc not in (LOCAL_TARGET, CACHE_TARGET):
        if len(visited) > 4:
            raise AssertionError('unexpected loop')
        visited.append(f'0x{pc:x}')
        word = struct.unpack_from('<I', data, original.off(pc))[0]
        if word & 0xFF000000 == 0x35000000:  # 32-bit CBNZ
            imm = word >> 5 & 0x7FFFF
            if imm & 0x40000:
                imm -= 0x80000
            pc += 4 * imm if regs[word & 31] != 0 else 4
        elif word & 0xFF00001F == 0x7100001F:  # CMP Wn,#imm (SUBS WZR)
            immediate = word >> 10 & 0xFFF
            if word & (1 << 22):
                immediate <<= 12
            zero = regs[word >> 5 & 31] == immediate
            pc += 4
        elif word & 0xFF00001F == 0x54000000:  # B.EQ
            imm = word >> 5 & 0x7FFFF
            if imm & 0x40000:
                imm -= 0x80000
            pc += 4 * imm if zero else 4
        elif word == 0xD503201F:  # NOP
            pc += 4
        else:
            raise AssertionError(f'unexpected instruction {word:08x} at {pc:x}')
    return {'path': 'local' if pc == LOCAL_TARGET else 'cache', 'visited': visited}


def payload(archive, entry, expected_magic):
    info = archive.getinfo(entry)
    crc = total = 0
    head = b''
    with archive.open(info) as stream:
        while chunk := stream.read(1024 * 1024):
            if not head:
                head = chunk[:64]
            crc = zlib.crc32(chunk, crc)
            total += len(chunk)
    assert total > 0 and total == info.file_size and crc == info.CRC, entry
    assert expected_magic in head, entry
    return {'entry': entry, 'size': total, 'crc32': f'{crc:08x}', 'pass': True}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('prepared_engine', type=Path)
    parser.add_argument('--apk', type=Path,
                        default=ROOT / 'arcaea-full-offline-practice-arm64-fix3.apk')
    parser.add_argument('--report', type=Path,
                        default=Path(__file__).with_name('path-verify.json'))
    args = parser.parse_args()
    data = args.prepared_engine.read_bytes()
    result = {'prepared_engine': str(args.prepared_engine), 'apk': str(args.apk),
              'checks': [], 'routes': [], 'songs': [], 'failures': []}

    def check(name, condition):
        result['checks'].append({'name': name, 'pass': bool(condition)})
        if not condition:
            result['failures'].append(name)

    check('same engine length', len(data) == len(original.data))
    check('original instruction fingerprint', original.read(PATCH_VA, 4) == OLD)
    off = original.off(PATCH_VA)
    check('prepared instruction is NOP', data[off:off + 4] == NEW)
    first = original.off(GETTER_START)
    last = original.off(GETTER_END)
    expected = bytearray(original.data[first:last])
    expected[off - first:off - first + 4] = NEW
    check('entire AFF getter differs only at intended instruction',
          data[first:last] == expected)
    # These immutable ranges also preserve both SSO/heap destructors, exception
    # cleanup, canary and epilogue. No new allocation or string is introduced.
    check('SSO/heap normal and exception cleanup unchanged',
          data[original.off(0x903344):last] == original.read(0x903344, GETTER_END - 0x903344))
    check('difficulty filename getter unchanged',
          data[original.off(0x130AC5C):original.off(0x130ACC4)] == original.read(0x130AC5C, 0x68))
    check('difficulty filename jump table supports all five classes',
          original.read(0x4F8A21, 5) == bytes([0, 2, 4, 6, 8]))
    check('audio local gate unchanged',
          data[original.off(0x15C8064):original.off(0x15C806C)] == original.read(0x15C8064, 8))

    for remote in (False, True):
        for difficulty in range(5):
            for label, engine in (('original', original.data), ('prepared', data)):
                row = {'engine': label, 'remote_dl': remote, 'ratingClass': difficulty}
                try:
                    row.update(route(engine, remote, difficulty))
                    expected_route = 'cache' if remote or (label == 'original' and difficulty == 3) else 'local'
                    row['pass'] = row['path'] == expected_route
                except Exception as exc:
                    row.update(error=str(exc), **{'pass': False})
                result['routes'].append(row)
                if not row['pass']:
                    result['failures'].append(f'route:{label}:{remote}:{difficulty}')

    with zipfile.ZipFile(args.apk) as archive:
        songs = json.loads(archive.read('assets/songs/songlist'))['songs']
        for song in songs:
            for diff in song.get('difficulties', []):
                if diff['ratingClass'] != 3:
                    continue
                row = {'id': song['id'], 'ratingClass': 3,
                       'ratingClassAlias': diff.get('ratingClassAlias'),
                       'remote_dl': song.get('remote_dl'),
                       'world_unlock': diff.get('world_unlock'),
                       'hidden_until': diff.get('hidden_until'),
                       'audioOverride': bool(diff.get('audioOverride'))}
                prefix = 'assets/songs/' + song['id'] + '/'
                try:
                    assert song.get('remote_dl') is False
                    assert diff.get('world_unlock') is False and diff.get('hidden_until') == ''
                    row['chart'] = payload(archive, prefix + '3.aff', b'AudioOffset:')
                    row['audio'] = payload(archive, prefix + ('3.ogg' if diff.get('audioOverride') else 'base.ogg'), b'OggS')
                    row['pass'] = True
                except Exception as exc:
                    row.update(error=str(exc), **{'pass': False})
                    result['failures'].append('payload:' + song['id'])
                result['songs'].append(row)
    check('68 packaged class-3 charts', len(result['songs']) == 68)
    check('four Inscribed aliases', sum(s['ratingClassAlias'] == 1 for s in result['songs']) == 4)
    check('eight separate BYD audio files', sum(s['audioOverride'] for s in result['songs']) == 8)
    result['pass'] = not result['failures']
    args.report.write_text(json.dumps(result, indent=2, ensure_ascii=False) + '\n', encoding='utf-8')
    print(json.dumps({'pass': result['pass'], 'checks': len(result['checks']),
                      'route_fixtures': len(result['routes']), 'charts': len(result['songs']),
                      'failures': result['failures'], 'report': str(args.report)}, indent=2))
    return 0 if result['pass'] else 1


if __name__ == '__main__':
    sys.exit(main())
