import sys, os, struct, json, bisect
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'python_libs'))
from elftools.elf.elffile import ELFFile
from capstone import Cs,CS_ARCH_ARM64,CS_MODE_LITTLE_ENDIAN
path=ROOT/'lib/arm64-v8a/libcocos2dcpp.so'
data=path.read_bytes(); elf=ELFFile(path.open('rb'))
secs={s.name:s for s in elf.iter_sections()}
rel={r['r_offset']:r['r_addend'] for r in secs['.rela.dyn'].iter_relocations() if r['r_info_type']==1027}
def off(addr):
 for s in elf.iter_segments():
  if s['p_type']=='PT_LOAD' and s['p_vaddr']<=addr<s['p_vaddr']+s['p_filesz']: return addr-s['p_vaddr']+s['p_offset']
 raise ValueError(hex(addr))
def read(addr,n): return data[off(addr):off(addr)+n]
def ptr(addr):return rel.get(addr,struct.unpack('<Q',read(addr,8))[0])
def cstr(addr):
 try:return data[off(addr):].split(b'\0',1)[0].decode(errors='replace')
 except:return ''
md=Cs(CS_ARCH_ARM64,CS_MODE_LITTLE_ENDIAN)
hdr=secs['.eh_frame_hdr']; hb=hdr.data()
fcount=struct.unpack_from('<I',hb,8)[0]
funcs=sorted(hdr['sh_addr']+struct.unpack_from('<i',hb,12+8*i)[0] for i in range(fcount))
def func(addr):return funcs[bisect.bisect_right(funcs,addr)-1]
def scanrefs(targets):
 ts=set(targets); found=[]; tx=secs['.text']; regs={}
 for i,(v,) in enumerate(struct.iter_unpack('<I',tx.data())):
  a=tx['sh_addr']+i*4
  if v&0x9f000000==0x90000000:
   imm=((v>>5&0x7ffff)<<2)|(v>>29&3)
   if imm&0x100000:imm-=0x200000
   regs[v&31]=(a&~0xfff)+(imm<<12),a
  elif v&0xff000000==0x91000000:
   rd=v&31;rn=v>>5&31;imm=(v>>10&4095)<<(12 if v>>22&1 else 0)
   if rn in regs and a-regs[rn][1]<80:
    dest=regs[rn][0]+imm
    if dest in ts:found.append((a,func(a),dest,'add'))
  elif v&0xffc00000==0xf9400000:
   rn=v>>5&31;imm=(v>>10&4095)*8
   if rn in regs and a-regs[rn][1]<80:
    loc=regs[rn][0]+imm; dest=rel.get(loc)
    if loc in ts:found.append((a,func(a),loc,'ldr-loc'))
    if dest in ts:found.append((a,func(a),dest,'ldr-ptr'))
 return found
def calls(targets):
 ts=set(targets);tx=secs['.text'];found=[]
 for i,(v,) in enumerate(struct.iter_unpack('<I',tx.data())):
  if v&0x7c000000==0x14000000:
   a=tx['sh_addr']+4*i;imm=v&0x3ffffff
   if imm&0x2000000:imm-=0x4000000
   dest=a+imm*4
   if dest in ts:found.append((a,func(a),dest))
 return found
def dis(addr,n=256):
 for i in md.disasm(read(addr,n),addr): print(f'{i.address:08x} {i.mnemonic:8} {i.op_str}')
def refs(addr):return [a for a,v in rel.items() if v==addr]
def straddr(s):
 p=data.find(s.encode()+b'\0')
 if p<0:return None
 for seg in elf.iter_segments():
  if seg['p_type']=='PT_LOAD' and seg['p_offset']<=p<seg['p_offset']+seg['p_filesz']:return p-seg['p_offset']+seg['p_vaddr']
def rtti(s):
 a=straddr(s);print('NAME',s,hex(a) if a else None)
 if a is None:return
 for p in refs(a):
  ti=p-8;print('RTTI',hex(ti),'REFS',[hex(q) for q in refs(ti)])
  for v in refs(ti):
   print('VTABLE',hex(v+8))
   for k in range(0,100*8,8):
    x=ptr(v+8+k)
    if x==0 or x>0x2000000: break
    print(f'{k//8:3} +{k:03x} {x:08x}')
if __name__=='__main__':
 if sys.argv[1]=='sections':
  for s in elf.iter_sections(): print(s.name,hex(s['sh_addr']),hex(s['sh_offset']),hex(s['sh_size']))
 elif sys.argv[1]=='rtti':
  for n in sys.argv[2:]:rtti(n)
 elif sys.argv[1]=='dis':dis(int(sys.argv[2],16),int(sys.argv[3],16) if len(sys.argv)>3 else 256)
 elif sys.argv[1]=='refs':print([hex(x) for x in refs(int(sys.argv[2],16))])
 elif sys.argv[1]=='xrefs':
  for row in scanrefs(int(x,16) for x in sys.argv[2:]):print(*[hex(x) if isinstance(x,int) else x for x in row])
 elif sys.argv[1]=='func':
  a=func(int(sys.argv[2],16));b=funcs[bisect.bisect_right(funcs,a)];dis(a,b-a)
 elif sys.argv[1]=='calls':
  for row in calls(int(x,16) for x in sys.argv[2:]):print(*[hex(x) for x in row])
