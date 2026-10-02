"""Hide offline-inapplicable buttons while preserving Cocos node identities.

WidgetOptions field numbers follow the public Cocos2d-x v3 generated schema:
https://raw.githubusercontent.com/cocos2d/cocos2d-x/v3/cocos/editor-support/cocostudio/CSParseBinary_generated.h
The supplied 2.1.0.0 CSBs use WidgetOptions directly for the root "Node" class;
concrete classes have a class-specific options table containing WidgetOptions.
"""
from pathlib import Path
import hashlib
import json
import struct
import zipfile

ROOT = Path(__file__).resolve().parents[1]
LAYOUTS = {
    'assets/layouts/mainmenu/MainMenu.csb': {
        'sha256': '71bf577f41846228be90d3e7f2eb011e2409dcac4d46c6d6c0a086f4c15e1858',
        'hide': ['/Layer/networkButton'],
    },
    'assets/layouts/topbar/TopBar.csb': {
        'sha256': 'e31e15232203c6bcab8751c03599eb61fa7c24a8ea1043a86b30799dc11a5e34',
        'hide': ['/Layer/memoriesButton'],
    },
}


class Csb:
    def __init__(self, data): self.data = data

    def number(self, fmt, pos):
        size = struct.calcsize(fmt)
        if pos < 0 or pos+size > len(self.data): raise ValueError('CSB reference out of range')
        return struct.unpack_from(fmt, self.data, pos)[0]

    def u32(self, pos): return self.number('<I',pos)
    def i32(self, pos): return self.number('<i',pos)
    def u16(self, pos): return self.number('<H',pos)

    def vtable(self, table):
        # A signed offset is intentional: FlatBuffers permits shared vtables
        # both before and after a table (the original CSBs already use both).
        vt = table-self.i32(table)
        length, size = self.u16(vt), self.u16(vt+2)
        if length < 4 or length % 2 or vt+length > len(self.data) or size < 4 or table+size > len(self.data):
            raise ValueError('Invalid CSB table')
        return vt, length, size

    def field(self, table, index):
        vt, length, size = self.vtable(table)
        if index >= length: return 0
        offset = self.u16(vt+index)
        if offset and not 4 <= offset < size: raise ValueError('Invalid CSB field')
        return table+offset if offset else 0

    def ptr(self, table, index):
        pos = self.field(table,index)
        return pos+self.u32(pos) if pos else 0

    def string(self, table, index):
        pos = self.ptr(table,index)
        if not pos: return ''
        size = self.u32(pos)
        if pos+4+size >= len(self.data) or self.data[pos+4+size] != 0: raise ValueError('Invalid CSB string')
        return self.data[pos+4:pos+4+size].decode('utf-8')

    def byte(self, table, index, default):
        pos = self.field(table,index)
        return self.data[pos] if pos else default

    def integer(self, table, index, default=0):
        pos = self.field(table,index)
        return self.i32(pos) if pos else default

    def vector(self, table, index):
        vec = self.ptr(table,index)
        if not vec: return []
        size = self.u32(vec)
        if vec+4+size*4 > len(self.data): raise ValueError('Invalid CSB vector')
        return [pos+self.u32(pos) for pos in range(vec+4,vec+4+size*4,4)]

    def nodes(self):
        return list(self.walk(self.ptr(self.u32(0),10)))

    def walk(self, node, parent=''):
        typ = self.string(node,4)
        options = self.ptr(self.ptr(node,8),4)
        widget = options if typ == 'Node' else self.ptr(options,4)
        name = self.string(widget,4)
        path = parent+'/'+name
        yield {'path':path, 'type':typ, 'node':node, 'widget':widget,
               'action_tag':self.integer(widget,6),
               'visible':self.byte(widget,12,1), 'touch':self.byte(widget,34,0)}
        for child in self.vector(node,6): yield from self.walk(child,path)

    def timelines(self):
        action = self.ptr(self.u32(0),12)
        if not action: return []
        return [{'tag':self.integer(line,6), 'property':self.string(line,4)}
                for line in self.vector(action,8)]


def patch_layout(original, specification):
    if hashlib.sha256(original).hexdigest() != specification['sha256']:
        raise ValueError('Unsupported original CSB fingerprint')
    source = Csb(original)
    nodes = source.nodes()
    wanted = set(specification['hide'])
    matches = [node for node in nodes if node['path'] in wanted]
    if len(matches) != len(wanted): raise ValueError('Missing or duplicate target CSB node')
    tags = {node['action_tag'] for node in matches}
    # Position/scale/alpha animations are harmless, but a visible animation
    # could undo the change; fail rather than silently leave a live entry.
    for line in source.timelines():
        if line['tag'] in tags and 'visible' in line['property'].lower():
            raise ValueError('Target CSB node has a visibility animation')
    patched = bytearray(original)
    changes = []
    for node in matches:
        table = node['widget']
        vt, length, size = source.vtable(table)
        if length <= 34 or node['type'] != 'Button': raise ValueError('Unexpected button schema')
        # These exact files have unused zero padding at object offsets 4..6,
        # before touchEnabled at +7 and the first other field at +8. Give the
        # booleans their own bytes in that padding; no field aliases are made.
        offsets = [source.u16(vt+i) for i in range(4,length,2)]
        if any(0 < offset < 7 for offset in offsets) or original[table+4:table+7] != b'\0\0\0':
            raise ValueError('Expected unused button padding is unavailable')
        private_vtable = bytearray(original[vt:vt+length])
        struct.pack_into('<H',private_vtable,12,4)  # WidgetOptions.visible=false
        struct.pack_into('<H',private_vtable,34,5)  # WidgetOptions.touchEnabled=false
        while len(patched) % 2: patched.append(0)
        new_vt = len(patched)
        patched.extend(private_vtable)
        struct.pack_into('<i',patched,table,table-new_vt)
        changes.append({'node':node['path'], 'widget_offset':hex(table),
                        'old_vtable':hex(vt), 'new_vtable':hex(new_vt),
                        'visible':False, 'touch_enabled':False})
        # Shared original vtables are never edited. Every other schema slot is
        # byte-for-byte identical in the new private vtable.
        for index in range(4,length,2):
            if index not in (12,34) and private_vtable[index:index+2] != original[vt+index:vt+index+2]:
                raise AssertionError('Unexpected CSB schema change')
    result = Csb(bytes(patched))
    expected = [{**node, **({'visible':0,'touch':0} if node['path'] in wanted else {})} for node in nodes]
    if result.nodes() != expected or result.timelines() != source.timelines():
        raise AssertionError('CSB tree or unrelated state changed')
    allowed = {pos for node in matches for pos in range(node['widget'],node['widget']+4)}
    if any(a != b and pos not in allowed for pos,(a,b) in enumerate(zip(original,patched))):
        raise AssertionError('Unexpected original CSB payload modification')
    return bytes(patched), changes


def main():
    reports = []
    with zipfile.ZipFile(ROOT / 'arcaea.apk') as source:
        for entry,spec in LAYOUTS.items():
            original = source.read(entry)
            patched,changes = patch_layout(original,spec)
            path = ROOT / 'build/offline' / entry
            path.parent.mkdir(parents=True,exist_ok=True)
            path.write_bytes(patched)
            reports.append({'entry':entry,'input_sha256':spec['sha256'],
                            'output_sha256':hashlib.sha256(patched).hexdigest(),
                            'changes':changes,'node_count':len(Csb(patched).nodes())})
    (ROOT / 'build/offline/layouts-report.json').write_text(json.dumps(reports,indent=2),encoding='utf-8')
    print(f'Prepared {len(reports)} offline layouts; node trees and animations verified')


if __name__ == '__main__': main()
