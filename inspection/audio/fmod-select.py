import sys
from pathlib import Path
sys.path.insert(0,str(Path('inspection/python_libs').resolve()))
from elftools.elf.elffile import ELFFile
from capstone import *
e=ELFFile(open('inspection/lib/arm64-v8a/libfmod.so','rb'));d=e.get_section_by_name('.dynsym');cs=Cs(CS_ARCH_ARM64,CS_MODE_ARM)
for n in ['FMOD_ChannelGroup_SetPitch','FMOD_ChannelGroup_AddDSP','FMOD_ChannelGroup_GetSystemObject','FMOD_System_CreateDSPByType','FMOD_DSP_SetParameterFloat','_ZN4FMOD14ChannelControl8setPitchEf']:
 s=d.get_symbol_by_name(n)
 if not s:continue
 s=s[0];sec=e.get_section(s['st_shndx']);a=s['st_value'];b=sec.data()[a-sec['sh_addr']:a-sec['sh_addr']+s['st_size']]
 print(n,hex(a))
 for i in cs.disasm(b,a):print(hex(i.address),i.mnemonic,i.op_str)
