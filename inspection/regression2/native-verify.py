"""Independent instruction/branch regression checks; no device execution claimed.

With no argument, applies the additions in memory to the fingerprinted original.
With a positional engine path, verifies the already-prepared full offline ELF.
Does not write a native library or modify any build output.
"""
import importlib.util
import struct
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'inspection/native'))
import analyze as a

ADDED = {
    0x18093D8: ('e00314aa', 'f3031faa', 'mov', 'x19, xzr'),
    0x18093DC: ('e103162a', 'f6031f2a', 'mov', 'w22, wzr'),
    0x18093E0: ('069cfc97', 'e5000014', 'b', '#0x1809774'),
    0x1505644: ('e00314aa', '33008052', 'mov', 'w19, #1'),
    0x1505648: ('e103132a', '06000014', 'b', '#0x1505660'),
    0xD2A3E4: ('49000034', 'c9000034', 'cbz', 'w9, #0xd2a3fc'),
    0xD2A494: ('c11b0054', 'a1410054', 'b.ne', '#0xd2acc8'),
    0x8A60F4: ('61120054', '93000014', 'b', '#0x8a6340'),
    0x114E2EC: ('01150054', 'a8000014', 'b', '#0x114e58c'),
}

spec = importlib.util.spec_from_file_location('offline_additions', ROOT / 'tools/prepare_offline_characters.py')
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
if len(sys.argv) > 1:
    patched = Path(sys.argv[1]).read_bytes()
else:
    patched, report = module.patch_additions(a.data, a.data)
assert len(patched) == len(a.data)

for row in module.PATCHES:
    offset = a.off(row['address'])
    assert patched[offset:offset+4].hex() == row['after'], row['name']
for address, (before, after, mnemonic, operands) in ADDED.items():
    assert a.read(address, 4).hex() == before, hex(address)
    instruction = list(a.md.disasm(bytes.fromhex(after), address))
    assert len(instruction) == 1
    assert (instruction[0].mnemonic, instruction[0].op_str) == (mnemonic, operands)

# Guards, successful and failed epilogues, and real-file validation must remain.
UNCHANGED = [
    (0x1809390, 0x48), (0x1809428, 8), (0x1809774, 0x38),
    (0x150560C, 0x38), (0x150565C, 0x30),
    (0xD2A3D8, 12), (0xD2A3E8, 20), (0xD2A3FC, 0x98),
    (0xD2ACC8, 0xD8), (0xD2AFB4, 0x18),
    (0x1956124, 0x20),
    (0x8A60E0, 0x14), (0x8A6340, 0x2C),
    (0x114E2D8, 0x14), (0x114E58C, 0x30),
]
for address, length in UNCHANGED:
    offset = a.off(address)
    assert patched[offset:offset+length] == a.read(address, length), hex(address)


def instruction(address):
    offset = a.off(address)
    return list(a.md.disasm(patched[offset:offset+4], address))[0]


def register_value(register, registers):
    if register in ('xzr', 'wzr'):
        return 0
    value = registers.get(int(register[1:]), 0)
    return value & (0xffffffff if register.startswith('w') else 0xffffffffffffffff)


def run_guard(start, stop, registers, exists):
    """Execute the actual tiny patched control-flow slice; stub hasDifficulty."""
    address = start
    called_exists = 0
    trace = []
    for _ in range(20):
        if address == stop:
            return registers, called_exists, trace
        trace.append(address)
        ins = instruction(address)
        op = ins.op_str.split(', ')
        if ins.mnemonic == 'bl':
            assert ins.op_str == '#0x8bed58', ins.op_str
            called_exists += 1
            registers[0] = int(exists)
        elif ins.mnemonic == 'mov':
            value = int(op[1][1:], 0) if op[1].startswith('#') else register_value(op[1], registers)
            registers[int(op[0][1:])] = value & (0xffffffff if op[0].startswith('w') else 0xffffffffffffffff)
        elif ins.mnemonic == 'b':
            address = int(op[0][1:], 0)
            continue
        elif ins.mnemonic == 'cbz':
            if register_value(op[0], registers) == 0:
                address = int(op[1][1:], 0)
                continue
        elif ins.mnemonic == 'tbz':
            if not register_value(op[0], registers) & (1 << int(op[1][1:], 0)):
                address = int(op[2][1:], 0)
                continue
        else:
            raise AssertionError((hex(address), ins.mnemonic, ins.op_str))
        address += 4
    raise AssertionError('Unexpected branch loop')


for diff in range(5):
    for exists in (False, True):
        regs, calls, trace = run_guard(0x18093D0, 0x1809774,
                                      {0: 0x1000, 1: diff, 19: 0x0101010101, 22: diff}, exists)
        assert (regs[19], regs[22]) == ((0, 0) if exists else (0x0101010101, 1))
        assert calls == 1 and 0x180940C not in trace
        for song in (0, 0x1000):
            regs, calls, trace = run_guard(0x1505630, 0x1505660, {0: song, 1: diff}, exists)
            assert regs[19] == int(bool(song) and exists)
            assert calls == int(bool(song))

# Decode conditional targets independently of Capstone, and exhaust the inputs
# that distinguish local BYD from local other difficulties and remote content.
def signed(value, bits):
    return value - (1 << bits) if value & (1 << (bits - 1)) else value

def target19(address):
    value = struct.unpack_from('<I', patched, a.off(address))[0]
    return address + signed((value >> 5) & 0x7ffff, 19) * 4

assert target19(0xD2A3E4) == 0xD2A3FC
assert target19(0xD2A494) == 0xD2ACC8
for remote in (False, True):
    for diff in range(5):
        for needs_download in (False, True):
            local_branch = target19(0xD2A3E4) if not remote else 0xD2A3E8
            assert local_branch == (0xD2A3FC if not remote else 0xD2A3E8)
            # For local charts, no account/download cache value can divert
            # execution before the unchanged AFF/audio existence tests.
            if not remote:
                assert local_branch < 0xD2A424 < 0xD2A46C < 0xD2A494
for mode in range(8):
    destination = 0xD2A498 if mode == 1 else target19(0xD2A494)
    assert destination == (0xD2A498 if mode == 1 else 0xD2ACC8)

for start, stop in ((0x8A60F4, 0x8A6340), (0x114E2EC, 0x114E58C)):
    for diff in range(5):
        regs, calls, trace = run_guard(start, stop, {20: diff, 21: 0}, True)
        assert regs[21] == 0 and calls == 0 and trace == [start]

print(f'PASS: {len(module.PATCHES)} additions, {len(ADDED)} new instruction fingerprints, {len(UNCHANGED)} unchanged ranges; '
      'display/playability guards, local-BYD/ordinary-start branches and '
      'DIE IN/Aether Crest ETR null-condition exclusion fixtures.')
print('Android runtime execution not performed; device confirmation is still required.')
