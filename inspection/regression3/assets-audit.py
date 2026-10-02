"""Read-only independent fix2 BYD / Inscribed metadata and payload audit."""
from pathlib import Path
import collections
import json
import sys
import zipfile
import zlib

ROOT = Path(__file__).resolve().parents[2]
APK = ROOT / 'arcaea-full-offline-practice-arm64-fix2.apk'


def run():
    result = {'apk': APK.name, 'songs': [], 'failures': []}
    with zipfile.ZipFile(APK) as archive:
        songs = json.loads(archive.read('assets/songs/songlist'))['songs']
        generated = (ROOT / 'build/full-offline/assets/songs/songlist').read_bytes()
        result['generated_songlist_matches_actual_apk'] = generated == archive.read('assets/songs/songlist')
        result['song_count'] = len(songs)
        result['song_remote_dl'] = dict(collections.Counter(str(s.get('remote_dl', 'MISSING')) for s in songs))
        result['difficulty_count'] = sum(len(s.get('difficulties', [])) for s in songs)
        result['byd_local_unlock'] = dict(collections.Counter(str(s.get('byd_local_unlock', 'MISSING')) for s in songs))
        for song in songs:
            for diff in song.get('difficulties', []):
                if diff['ratingClass'] != 3:
                    continue
                prefix = 'assets/songs/' + song['id'] + '/'
                audio = '3.ogg' if diff.get('audioOverride') else 'base.ogg'
                row = {
                    'id': song['id'], 'alias': diff.get('ratingClassAlias'),
                    'remote_dl': song.get('remote_dl'),
                    'byd_local_unlock': song.get('byd_local_unlock', 'MISSING'),
                    'world_unlock': diff.get('world_unlock'),
                    'hidden_until': diff.get('hidden_until'),
                    'audioOverride': bool(diff.get('audioOverride')), 'files': [],
                }
                for leaf in ['3.aff', audio]:
                    name = prefix + leaf
                    file_result = {'entry': name}
                    try:
                        info = archive.getinfo(name)
                        total = crc = 0
                        header = b''
                        with archive.open(info) as stream:
                            while chunk := stream.read(1024 * 1024):
                                if not header:
                                    header = chunk[:64]
                                total += len(chunk)
                                crc = zlib.crc32(chunk, crc)
                        file_result.update(size=total, crc32=f'{crc:08x}', crc_ok=crc == info.CRC)
                        assert total == info.file_size and total > 0 and crc == info.CRC
                        if leaf.endswith('.ogg'):
                            assert header.startswith(b'OggS')
                        else:
                            assert b'AudioOffset:' in header
                    except Exception as exc:
                        file_result['error'] = str(exc) or type(exc).__name__
                        result['failures'].append(name)
                    row['files'].append(file_result)
                result['songs'].append(row)
    result['byd_count'] = len(result['songs'])
    result['inscribed_ids'] = [s['id'] for s in result['songs'] if s['alias'] == 1]
    result['audio_override_ids'] = [s['id'] for s in result['songs'] if s['audioOverride']]
    result['pass'] = (
        not result['failures']
        and result['generated_songlist_matches_actual_apk']
        and result['song_remote_dl'] == {'False': 561}
        and result['byd_count'] == 68
        and all(s['world_unlock'] is False and s['hidden_until'] == '' for s in result['songs'])
    )
    target = Path(__file__).with_name('assets-audit.json')
    target.write_text(json.dumps(result, indent=2, ensure_ascii=False) + '\n', encoding='utf-8')
    print(json.dumps({k: v for k, v in result.items() if k != 'songs'}, ensure_ascii=False, indent=2))
    return 0 if result['pass'] else 1


if __name__ == '__main__':
    sys.exit(run())
