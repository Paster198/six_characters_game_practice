"""Read-only regression checks for manifest and the two modified CSBs."""
from pathlib import Path
import json
import struct
import sys
import zipfile

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT/'tools'))
from prepare_offline_manifest import string_pool
from prepare_offline_layouts import Csb, LAYOUTS


def nodes(data):
    header = struct.unpack_from('<HHI',data)
    assert header[0] == 3 and header[2] == len(data)
    result=[]
    strings=[]
    pos=header[1]
    while pos<len(data):
        typ,head,size=struct.unpack_from('<HHI',data,pos)
        chunk=data[pos:pos+size]
        assert size>=8 and len(chunk)==size
        if typ==1: strings=string_pool(chunk)
        if typ==0x102:
            _,name,astart,asz,count=struct.unpack_from('<IIHHH',chunk,head)
            attrs={}
            for n in range(count):
                _,key,raw,_,_,vtyp,value=struct.unpack_from('<IIIHBBI',chunk,head+astart+n*asz)
                attrs[strings[key]]=strings[raw] if raw!=0xffffffff else strings[value] if vtyp==3 else value
            result.append({'node':strings[name],'attributes':attrs})
        pos+=size
    return result


def main():
    result={}
    with zipfile.ZipFile(ROOT/'arcaea.apk') as z:
        orig=nodes(z.read('AndroidManifest.xml'))
        new=nodes((ROOT/'build/offline/AndroidManifest.xml').read_bytes())
        expected=[r for r in orig if not (r['node'].startswith('uses-permission') and r['attributes'].get('name')=='android.permission.INTERNET')]
        assert new==expected, 'Manifest changed beyond INTERNET removal'
        permissions=[r['attributes'].get('name') for r in new if r['node'].startswith('uses-permission')]
        assert 'android.permission.ACCESS_NETWORK_STATE' in permissions
        result['manifest']={'only_internet_permission_removed':True,'access_network_state_retained':True}
        result['layouts']=[]
        for entry,spec in LAYOUTS.items():
            original=z.read(entry)
            modified=(ROOT/'build/offline'/entry).read_bytes()
            a,b=Csb(original),Csb(modified)
            ns,ms=a.nodes(),b.nodes()
            assert len(ns)==len(ms)
            targets=[]
            for x,y in zip(ns,ms):
                if x['path'] not in spec['hide']:
                    assert x==y
                    continue
                assert y=={**x,'visible':0,'touch':0}
                p=x['widget'];ov,ol,os=a.vtable(p);nv,nl,sz=b.vtable(p)
                assert ov>p, 'Original already has a forward/shared vtable'
                assert nv>p and nv%2==0 and nv+nl<=len(modified)
                assert sz==os and ol==nl
                assert b.field(p,12)==p+4 and b.field(p,34)==p+5
                assert b.data[p+4:p+6]==b'\0\0'
                targets.append({'node':x['path'],'original_signed_offset':a.i32(p),
                                'patched_signed_offset':b.i32(p),'vtable_size':nl,
                                'object_size':sz,'boolean_field_offsets':[4,5]})
            assert a.timelines()==b.timelines()
            result['layouts'].append({'entry':entry,'targets':targets,'node_tree_and_timelines_retained':True})
    path=ROOT/'inspection/crash-offline-structure.json'
    path.write_text(json.dumps(result,indent=2),encoding='utf-8')
    print(json.dumps(result,indent=2))


if __name__=='__main__':main()
