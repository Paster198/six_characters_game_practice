"""Remove Internet capability from Android binary XML without decoding resources.

Only complete <uses-permission android:name="android.permission.INTERNET"/>
elements are removed. All other chunks and the original string pool are retained.
"""
from pathlib import Path
import json
import struct
import zipfile

ROOT = Path(__file__).resolve().parents[1]
NO_INDEX = 0xFFFFFFFF


def string_pool(chunk):
    _, header_size, _ = struct.unpack_from('<HHI', chunk)
    count, _, flags, start, _ = struct.unpack_from('<5I', chunk, 8)
    offsets = struct.unpack_from(f'<{count}I', chunk, header_size)
    utf8 = bool(flags & 0x100)
    strings = []
    for offset in offsets:
        pos = start + offset
        if utf8:
            # Two lengths: UTF-16 code units, followed by UTF-8 bytes.
            first = chunk[pos]; pos += 2 if first & 0x80 else 1
            first = chunk[pos]; pos += 1
            length = ((first & 0x7F) << 8) | chunk[pos] if first & 0x80 else first
            if first & 0x80: pos += 1
            strings.append(chunk[pos:pos+length].decode('utf-8'))
        else:
            first = struct.unpack_from('<H', chunk, pos)[0]; pos += 2
            length = first
            if first & 0x8000:
                length = ((first & 0x7FFF) << 16) | struct.unpack_from('<H', chunk, pos)[0]; pos += 2
            strings.append(chunk[pos:pos+length*2].decode('utf-16le'))
    return strings


def patch_manifest(original):
    kind, header_size, size = struct.unpack_from('<HHI', original)
    if kind != 3 or size != len(original): raise ValueError('Unexpected Android XML header')
    strings = None
    chunks, stack, removed = [], [], []
    skip_depth = None
    pos = header_size
    while pos < len(original):
        kind, node_header, chunk_size = struct.unpack_from('<HHI', original, pos)
        if chunk_size < 8 or pos+chunk_size > len(original): raise ValueError('Invalid XML chunk')
        chunk = original[pos:pos+chunk_size]
        if kind == 1:
            strings = string_pool(chunk)
        if kind == 0x102:
            if strings is None: raise ValueError('Missing string pool')
            _, name, attr_start, attr_size, count = struct.unpack_from('<IIHHH', chunk, node_header)
            tag = strings[name]
            attributes = {}
            for n in range(count):
                at = node_header + attr_start + n*attr_size
                _, key, raw, _, _, value_type, value = struct.unpack_from('<IIIHBBI', chunk, at)
                attributes[strings[key]] = strings[raw] if raw != NO_INDEX else strings[value] if value_type == 3 else value
            stack.append(tag)
            if tag in ('uses-permission', 'uses-permission-sdk-23') and attributes.get('name') == 'android.permission.INTERNET':
                if skip_depth is not None: raise ValueError('Unexpected nested permission')
                skip_depth = len(stack)
                removed.append(attributes['name'])
        keep = skip_depth is None
        if kind == 0x103:
            if not stack: raise ValueError('Unbalanced XML end tag')
            if skip_depth == len(stack): skip_depth = None
            stack.pop()
        if keep: chunks.append(chunk)
        pos += chunk_size
    if stack or not removed: raise ValueError('Expected Internet permission not found or unbalanced XML')
    output = bytearray(original[:header_size] + b''.join(chunks))
    struct.pack_into('<I', output, 4, len(output))
    return bytes(output), removed


def main():
    with zipfile.ZipFile(ROOT / 'arcaea.apk') as apk:
        original = apk.read('AndroidManifest.xml')
    output, removed = patch_manifest(original)
    path = ROOT / 'build/offline/AndroidManifest.xml'
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(output)
    (path.parent / 'manifest-report.json').write_text(json.dumps({'removed_permissions': removed,
        'original_bytes': len(original), 'output_bytes': len(output)}, indent=2), encoding='utf-8')
    print(f'Offline manifest: removed {len(removed)} Internet permission declarations')


if __name__ == '__main__': main()
