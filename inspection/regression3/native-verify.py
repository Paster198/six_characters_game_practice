"""Read-only verification of the local download-requirements fix.

Without arguments, test the one candidate instruction in an in-memory copy of
the original. Optionally pass a prepared engine containing the instruction.
Never writes an engine or APK. No Android runtime execution is claimed.
"""
import re
import struct
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / 'inspection/native'))
import analyze as a

ADDRESS = 0xA16FF8
BEFORE = bytes.fromhex('48100034')
AFTER = bytes.fromhex('c8210034')
BEGIN, END = 0xA16FB0, 0xA1753C
assert a.read(ADDRESS, 4) == BEFORE
offset = a.off(ADDRESS)
if len(sys.argv) > 1:
    patched = Path(sys.argv[1]).read_bytes()
else:
    patched = bytearray(a.data)
    patched[offset:offset+4] = AFTER
assert len(patched) == len(a.data)
assert patched[offset:offset+4] == AFTER

# Every other byte of the complete function, including cleanup and exception
# handlers, must remain the original. Other full-offline patches are elsewhere.
expected_function = bytearray(a.read(BEGIN, END-BEGIN))
expected_function[ADDRESS-BEGIN:ADDRESS-BEGIN+4] = AFTER
assert patched[a.off(BEGIN):a.off(BEGIN)+END-BEGIN] == expected_function
word = struct.unpack('<I', AFTER)[0]
assert word & 0xff00001f == 0x34000008  # CBZ W8
assert ADDRESS + ((word >> 5) & 0x7ffff) * 4 == 0xA17430

UNCHANGED = [
    (0x950C88, 0x2A4),      # null Song, empty vector and download-cache statuses
    (0x9BCF88, 0x254),      # per-chart/per-pack download status
    (0x13360A4, 0x64),      # combined needs-download boolean
    (0xD2A3FC, 0x98),       # actual AFF/audio validation, ends before story branch
    (0x1956124, 0x20),      # original AFF existence function entry
    (0x15C7E54, 0x1E0),     # audio override and local path selection
    (0x195DC34, 0x20),      # constructor writes remote_dl to Song+0x1c0
    (0x195DC88, 0xC4),      # distinct Song+0x256 single/innocence derived flag
]
for address, length in UNCHANGED:
    assert patched[a.off(address):a.off(address)+length] == a.read(address, length), hex(address)


def insn(address):
    data = patched[a.off(address):a.off(address)+4]
    return next(a.md.disasm(data, address))


def simulate(song_exists, remote, group, heap_id):
    """Execute actual setup/conditional/cleanup instructions with a string stub.

    The C++ string-copy call is modeled as either an inline or allocated string;
    free records its operand. The unmodified append blocks are boundary stops.
    """
    stack, output, song, allocation = 0x700000, 0x800000, 0x900000, 0xA00000
    registers = {1: song if song_exists else 0, 2: group, 19: output}
    memory = {song+0x1c0: remote}
    calls = []
    frees = []
    trace = []
    compare = (0, 0)
    address = 0xA16FD8  # prologue already saved x8 SRET into x19

    def value(name):
        if name in ('xzr', 'wzr'):
            return 0
        if name == 'sp':
            return stack
        if name.startswith('#'):
            return int(name[1:], 0)
        return registers.get(int(name[1:]), 0) & (0xffffffff if name[0] == 'w' else 0xffffffffffffffff)

    def set_register(name, val):
        registers[int(name[1:])] = val & (0xffffffff if name[0] == 'w' else 0xffffffffffffffff)

    def mem_address(expr):
        parts = expr.strip('[]').split(', ')
        return value(parts[0]) + (value(parts[1]) if len(parts) == 2 else 0)

    for _ in range(35):
        # Stop at the untouched epilogue or the original resource append path.
        if address in (0xA17440, 0xA17004, 0xA1720C, 0xA172F8):
            return address, memory, calls, frees, trace
        trace.append(address)
        instruction = insn(address)
        op = re.split(r', (?![^\[]*\])', instruction.op_str)
        name = instruction.mnemonic
        if name == 'stp':
            pointer = mem_address(op[2])
            memory[pointer], memory[pointer+8] = value(op[0]), value(op[1])
        elif name == 'str':
            memory[mem_address(op[1])] = value(op[0])
        elif name in ('ldr', 'ldrb'):
            loaded = memory[mem_address(op[1])]
            set_register(op[0], loaded & (0xff if name == 'ldrb' else 0xffffffffffffffff))
        elif name == 'mov':
            set_register(op[0], value(op[1]))
        elif name == 'add':
            set_register(op[0], value(op[1]) + value(op[2]))
        elif name == 'sub':
            set_register(op[0], value(op[1]) - value(op[2]))
        elif name == 'and':
            set_register(op[0], value(op[1]) & value(op[2]))
        elif name == 'cmp':
            compare = value(op[0]), value(op[1])
        elif name == 'bl':
            destination = value(op[0])
            calls.append(destination)
            if destination == 0x1A5B400:
                assert value('x0') == stack+0x20 and value('x1') == song
                memory[stack+0x20] = 1 if heap_id else 10
                memory[stack+0x30] = allocation if heap_id else 0
            elif destination == 0x1A5B390:
                frees.append(value('x0'))
            else:
                raise AssertionError(('unexpected call', hex(destination)))
        elif name in ('cbz', 'cbnz'):
            zero = value(op[0]) == 0
            if zero == (name == 'cbz'):
                address = value(op[1])
                continue
        elif name == 'tbz':
            if not value(op[0]) & (1 << value(op[1])):
                address = value(op[2])
                continue
        elif name == 'b.hi':
            if compare[0] > compare[1]:
                address = value(op[0])
                continue
        else:
            raise AssertionError((hex(address), name, instruction.op_str))
        address += 4
    raise AssertionError('did not reach a bounded exit')


cases = 0
for group in (0, 1, 2):
    for heap_id in (False, True):
        for song_exists in (False, True):
            for remote in (0, 1):
                stop, memory, calls, frees, trace = simulate(song_exists, remote, group, heap_id)
                assert [memory[0x800000+i] for i in (0, 8, 16)] == [0, 0, 0]
                if not song_exists:
                    assert stop == 0xA17440 and calls == [] and frees == []
                    assert 0xA17430 not in trace  # no unconstructed string cleanup
                elif not remote:
                    assert stop == 0xA17440 and 0xA17430 in trace
                    assert calls == [0x1A5B400] + ([0x1A5B390] if heap_id else [])
                    assert frees == ([0xA00000] if heap_id else [])
                    assert 0xA17200 not in trace  # no BYD/additional requirements
                else:
                    assert stop == (0xA1720C if group == 1 else 0xA17004)
                    assert calls == [0x1A5B400] and frees == []
                cases += 1

print(f'PASS: candidate CBZ fingerprint/target, full function unchanged except 4 bytes, '
      f'{len(UNCHANGED)} preserved native ranges, {cases} null/local/remote + group + inline/heap-ID fixtures.')
print('No native library written. Instruction-slice model only; Android runtime not tested.')
