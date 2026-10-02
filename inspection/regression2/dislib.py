"""Read-only focused disassembly for a supplied ELF library."""
from pathlib import Path
import struct
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'python_libs'))
from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

path = Path(sys.argv[1])
with path.open('rb') as stream:
    elf = ELFFile(stream)
    sections = {s.name: s for s in elf.iter_sections()}
    dyn = sections['.dynsym']
    plt = sections['.plt']
    names = {s['st_value']: s.name for s in dyn.iter_symbols() if s['st_value']}
    names.update({plt['sh_addr'] + 32 + 16*i: dyn.get_symbol(r['r_info_sym']).name
                  for i, r in enumerate(sections['.rela.plt'].iter_relocations())})
    if sys.argv[2] == 'ptr':
        rel = {r['r_offset']: r['r_addend'] for r in sections['.rela.dyn'].iter_relocations()
               if r['r_info_type'] == 1027}
        address = int(sys.argv[3], 16)
        for offset in range(0, int(sys.argv[4], 16) if len(sys.argv) > 4 else 64, 8):
            print(hex(address+offset), hex(rel.get(address+offset, 0)))
    elif sys.argv[2] == 'symbols':
        for address, name in sorted(names.items()):
            if sys.argv[3].lower() in name.lower(): print(hex(address), name)
    elif sys.argv[2] == 'calls':
        targets = {int(s, 16) for s in sys.argv[3:]}
        text = sections['.text']
        for i, (word,) in enumerate(struct.iter_unpack('<I', text.data())):
            if word & 0x7c000000 != 0x14000000: continue
            offset = word & 0x3ffffff
            if offset & 0x2000000: offset -= 0x4000000
            address = text['sh_addr'] + 4*i
            if address + 4*offset in targets: print(hex(address), hex(address + 4*offset))
    else:
        address = int(sys.argv[2], 16)
        count = int(sys.argv[3], 16) if len(sys.argv) > 3 else 256
        for section in sections.values():
            if section['sh_addr'] <= address < section['sh_addr'] + section['sh_size']:
                data = section.data()[address-section['sh_addr']:address-section['sh_addr']+count]
                for ins in Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN).disasm(data, address):
                    suffix = ''
                    if ins.mnemonic in ('bl','b') and ins.op_str.startswith('#'):
                        suffix = names.get(int(ins.op_str[1:],16),'')
                    print(f'{ins.address:08x} {ins.mnemonic:8} {ins.op_str:32} {suffix}')
                break
