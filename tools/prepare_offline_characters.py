"""Precisely fingerprinted additions for the full offline practice build.

The caller owns the engine output and metadata checksum updates. This module
only transforms bytes in memory; it never changes the source APK or resources.
Character additions will be listed only after their native path is verified.
"""
import hashlib
import struct

EXPECTED_ENGINE_SHA256 = '72e42cb4925655ecfef98bf2dbf92a5ac05145eb005a531c96c11b927a46e6dc'
PATCHES = [
    {
        'name': 'offline_catalog_pack_available',
        'address': 0x9BA728,
        'before': '010100b4',  # cbz x1,0x9ba748
        'after': '08000014',   # b 0x9ba748
        'reason': 'Full offline catalog only: use the existing true return of '
                  'the local Pack ownership predicate. It reads a local pointer '
                  'list and has no account/server writes. Required to retain '
                  'original set/pack grouping for bundled complete songs.',
    },
    {
        'name': 'offline_catalog_song_available',
        'address': 0x133B928,
        'before': '810c00b4',  # cbz x1,0x133bab8
        'after': '64000014',   # b 0x133bab8
        'reason': 'Full offline catalog only: use the existing true return of '
                  'the local Song ownership predicate. Empty purchase metadata '
                  'does not bypass its Pack pointer membership check. Retains '
                  'normal chart existence, difficulty and asset checks outside '
                  'this ownership-only function.',
    },
    {
        'name': 'offline_epilogue_pack_visible',
        'address': 0x13F4974,
        'before': '48010034',  # cbz w8,0x13f499c
        'after': '0a000014',   # b 0x13f499c
        'reason': 'Pack constructor 0xfd634c sets +0xb8 only for epilogue. '
                  'Skip its story-progress display gate in the offline catalog; '
                  'continue normal pack availability and return logic. Does '
                  'not modify story completion or trigger its scene modifier.',
    },
    {
        'name': 'ordinary_song_uses_existing_no_modifier_path',
        'address': 0x176AB0C,
        'before': '1f090071',  # cmp w8,#2
        'after': '1f791e72',   # tst w8,#0xfffffffd
        'reason': 'The existing selector clears/releases scene+0x308 for mode 2. '
                  'Testing all bits except bit 1 extends that same path to '
                  'ordinary mode 0, preserving behavior for every other mode. '
                  'This avoids story/challenge modifiers and their extra media '
                  'while keeping the ordinary AFF loader and scenecontrols.',
    },
    {
        'name': 'existing_local_chart_has_normal_display_flags',
        'address': 0x18093D8,
        'before': 'e00314aa',
        'after': 'f3031faa',  # mov x19,xzr
        'reason': 'After the original chart-existence test, initialize the '
                  'five ordinary unlocked display flags to zero. Avoids '
                  'hardcoded story/Inscribed gates and the unchecked null '
                  'UnlockCondition dereference used by Black Fate songs.',
    },
    {
        'name': 'existing_local_chart_has_no_lock_reason',
        'address': 0x18093DC,
        'before': 'e103162a',
        'after': 'f6031f2a',  # mov w22,wzr
        'reason': 'Companion to the existing-chart display patch: return '
                  'reason zero. The original missing-chart reason-one path '
                  'at 0x1809428 remains intact.',
    },
    {
        'name': 'existing_local_chart_returns_display_state',
        'address': 0x18093E0,
        'before': '069cfc97',
        'after': 'e5000014',  # b 0x1809774
        'reason': 'Return through the original stack-cookie check and '
                  'register-restoring epilogue before any temporary strings '
                  'or vectors are allocated. Returns {flags=0, reason=0} '
                  'only after Song::hasDifficulty succeeds.',
    },
    {
        'name': 'existing_local_chart_is_playable',
        'address': 0x1505644,
        'before': 'e00314aa',
        'after': '33008052',  # mov w19,#1
        'reason': 'After original null-Song and chart-existence guards, '
                  'select the existing true result for offline playability. '
                  'Skips cached account and Final Verdict/Silent Answer '
                  'story progression prerequisites, not file validation.',
    },
    {
        'name': 'existing_local_chart_returns_playable',
        'address': 0x1505648,
        'before': 'e103132a',
        'after': '06000014',  # b 0x1505660
        'reason': 'Companion playability branch into the original cookie '
                  'check and epilogue, before temporary allocations. Null '
                  'Song and absent difficulty still return false.',
    },
    {
        'name': 'bundled_beyond_uses_local_asset_checks',
        'address': 0xD2A3E4,
        'before': '49000034',  # cbz w9,0xd2a3ec
        'after': 'c9000034',   # cbz w9,0xd2a3fc
        'reason': 'remote_dl=false now skips the separate BYD downloader '
                  'cache/token gate too. Real AFF existence at 0xd2a424 '
                  'and audio file existence at 0xd2a46c are retained; a '
                  'remote_dl=true song still follows its original path.',
    },
    {
        'name': 'ordinary_start_skips_story_introduction',
        'address': 0xD2A494,
        'before': 'c11b0054',  # b.ne 0xd2a80c
        'after': 'a1410054',   # b.ne 0xd2acc8
        'reason': 'After successful real AFF/audio checks, non-World starts '
                  'continue through the existing normal callback instead '
                  'of the last/lasteternity story-introduction branch. '
                  'World mode 1 is unchanged. No temporary object lifetime '
                  'crosses the skipped block; avoids requiring story media '
                  'or changing cached narrative progress for practice.',
    },
    {
        'name': 'diein_etr_has_no_offline_purchase_requirement',
        'address': 0x8A60F4,
        'before': '61120054',  # b.ne 0x8a6340
        'after': '93000014',   # b 0x8a6340
        'reason': 'Use the existing false return of the DIE IN ETR extra '
                  'purchase-requirement helper after its song-id string is '
                  'released. All callers are covered. Its old ETR '
                  'body dereferences the absent Unlock object at 0x8a62b8 '
                  'via 0x1313478, even when pack ownership already succeeds. '
                  'This helper does not load chart/audio assets.',
    },
    {
        'name': 'aethercrest_etr_has_no_offline_purchase_requirement',
        'address': 0x114E2EC,
        'before': '01150054',  # b.ne 0x114e58c
        'after': 'a8000014',   # b 0x114e58c
        'reason': 'Aether Crest has the same collaboration ETR requirement '
                  'helper and unchecked null Unlock call at 0x114e4b0. '
                  'Return false through its original epilogue, after '
                  'string cleanup and before allocating purchase pack lists. '
                  'Ordinary chart-existence and file checks remain outside.',
    },
    {
        'name': 'bundled_assets_have_no_download_requirements',
        'address': 0xA16FF8,
        'before': '48100034',  # cbz w8,0xa17200
        'after': 'c8210034',   # cbz w8,0xa17430
        'reason': 'The download requirement factory initializes an empty '
                  'result vector before reading Song::remote_dl at +0x1c0. '
                  'For bundled songs, release the copied song-id string and '
                  'return that vector through the existing epilogue. The '
                  'old branch still appended BYD/Inscribed and additional '
                  'download keys, making selection UI consult server cache '
                  'despite local assets. Remote songs keep their original '
                  'requirements; Start retains real AFF and audio checks.',
    },
    {
        'name': 'bundled_beyond_chart_uses_local_aff_path',
        'address': 0x9031D4,
        'before': '00080054',  # b.eq 0x9032d4
        'after': '1f2003d5',   # nop
        'reason': 'The AFF path getter already routes remote_dl=true songs '
                  'to the download cache before this instruction. Remove '
                  'the remaining local difficulty-3 exception so bundled '
                  'BYD and Inscribed use songs/<id>/3.aff through the same '
                  'path builder as other local charts. Both actual chart '
                  'existence checks and GameScene/AFF loading use this '
                  'getter. Remote routing, path cleanup and missing-file '
                  'checks remain unchanged.',
    },
]


def _offset(data, address, length):
    if data[:6] != b'\x7fELF\x02\x01' or struct.unpack_from('<H', data, 18)[0] != 183:
        raise ValueError('Expected AArch64 ELF64 engine')
    phoff = struct.unpack_from('<Q', data, 32)[0]
    phentsize, count = struct.unpack_from('<HH', data, 54)
    for index in range(count):
        typ, flags, offset, va, _, filesz = struct.unpack_from('<IIQQQQ', data, phoff + index * phentsize)
        if typ == 1 and va <= address and address + length <= va + filesz:
            if not flags & 1:
                raise ValueError('Expected executable patch location')
            return offset + address - va
    raise ValueError(f'Unmapped patch address {address:#x}')


def patch_additions(original_engine, offline_engine):
    """Return (new_engine_bytes, list_of_patch_reports) without filesystem writes."""
    if hashlib.sha256(original_engine).hexdigest() != EXPECTED_ENGINE_SHA256:
        raise ValueError('Unsupported original engine fingerprint')
    if len(original_engine) != len(offline_engine):
        raise ValueError('Engine size changed before additions')
    result = bytearray(offline_engine)
    report = []
    occupied = set()
    for patch in PATCHES:
        before, after = bytes.fromhex(patch['before']), bytes.fromhex(patch['after'])
        if len(before) != len(after) or len(before) != 4:
            raise ValueError('Expected one same-size AArch64 instruction')
        offset = _offset(original_engine, patch['address'], len(before))
        if original_engine[offset:offset+4] != before or offline_engine[offset:offset+4] != before:
            raise ValueError(f"Instruction mismatch for {patch['name']}")
        if occupied.intersection(range(offset, offset+4)):
            raise ValueError('Overlapping additions')
        occupied.update(range(offset, offset+4))
        result[offset:offset+4] = after
        report.append({**patch, 'address': hex(patch['address']), 'file_offset': hex(offset)})
    changed = {i for i, (a, b) in enumerate(zip(offline_engine, result)) if a != b}
    if not changed.issubset(occupied):
        raise AssertionError('Unexpected changes outside additions')
    # The original CMP #2 selected only mode 2. TST ~2 selects precisely 0/2.
    for mode in range(256):
        assert ((mode & 0xfffffffd) == 0) == (mode in (0, 2))
    return bytes(result), report
