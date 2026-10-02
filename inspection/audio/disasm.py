import sys
from pathlib import Path
sys.path.insert(0,str(Path('inspection/python_libs').resolve()))
from elftools.elf.elffile import ELFFile
from capstone import *
p=Path('inspection/lib/arm64-v8a/libfmodProvider.so')
f=p.open('rb');e=ELFFile(f);d=e.get_section_by_name('.dynsym'); rel=e.get_section_by_name('.rela.plt');plt=e.get_section_by_name('.plt');pm={plt['sh_addr']+32+16*i:d.get_symbol(r['r_info_sym']).name for i,r in enumerate(rel.iter_relocations())}
cs=Cs(CS_ARCH_ARM64,CS_MODE_ARM)
def show(s):
 a=s['st_value'];n=s['st_size'];sec=e.get_section(s['st_shndx']);code=sec.data()[a-sec['sh_addr']:a-sec['sh_addr']+n]
 print('\n'+s.name+' '+hex(a)+' size '+str(n))
 for x in cs.disasm(code,a):
  suffix=''
  if x.mnemonic=='bl':
   t=int(x.op_str.removeprefix('#'),16);suffix=' ; '+pm.get(t,'')
  print(f'{x.address:08x}: {x.mnemonic:8s} {x.op_str}{suffix}')
for s in d.iter_symbols():
 if 'AudioProviderFMODAndroid' in s.name and s['st_info']['type']=='STT_FUNC':show(s)
