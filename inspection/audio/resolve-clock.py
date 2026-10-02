import sys
sys.path.insert(0,'inspection/python_libs')
from elftools.elf.elffile import ELFFile
f=open('inspection/lib/arm64-v8a/libcocos2dcpp.so','rb');e=ELFFile(f);d=e.get_section_by_name('.dynsym');r=e.get_section_by_name('.rela.plt');p=e.get_section_by_name('.plt')
for i,v in enumerate(r.iter_relocations()):
 a=p['sh_addr']+32+16*i
 if a in (0x1a5b610,): print(hex(a),d.get_symbol(v['r_info_sym']).name)
