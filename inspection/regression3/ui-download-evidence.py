"""Read-only, original-engine evidence for the independent download/UI audit."""
from pathlib import Path
import hashlib
import sys

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE.parent / "native"))
import analyze as a

EXPECTED = "72e42cb4925655ecfef98bf2dbf92a5ac05145eb005a531c96c11b927a46e6dc"
assert hashlib.sha256(a.data).hexdigest() == EXPECTED
assert a.read(0xa16ff8, 4) == bytes.fromhex("48100034")
patched = list(a.md.disasm(bytes.fromhex("c8210034"), 0xa16ff8))
assert len(patched) == 1
assert (patched[0].mnemonic, patched[0].op_str) == ("cbz", "w8, #0xa17430")
assert a.calls([0x13360a4]) == [
    (0xd2a3d4, 0xd2a368, 0x13360a4),
    (0x1370ba0, 0x136f860, 0x13360a4),
]

ranges = [
    ("Factory initial lifetime", 0xa16fb0, 0x60),
    ("Independent BYD and audio additions", 0xa17200, 0x100),
    ("Factory cleanup", 0xa17430, 0x3c),
    ("Empty vector in status", 0x950d14, 0x24),
    ("Empty-vector status result", 0x950e28, 0x50),
    ("Combined status", 0x13360a4, 0x88),
    ("UI icon decision", 0x1370b84, 0xc4),
    ("Click callback", 0x169ee90, 0x90),
    ("Start predicate and actual file checks", 0xd2a3b0, 0xe0),
    ("remote_dl parse", 0x193ad30, 0x6c),
    ("remote_dl constructor argument", 0x193f754, 0x4c),
    ("remote_dl constructor member and separate category flag", 0x195dc28, 0x124),
]
lines = ["Original engine SHA256: " + EXPECTED,
         "Candidate decoded only; no binary modified: cbz w8, #0xa17430", ""]
for label, start, size in ranges:
    lines.append(label)
    for ins in a.md.disasm(a.read(start, size), start):
        lines.append(f"{ins.address:08x} {ins.bytes.hex():8s} {ins.mnemonic:8s} {ins.op_str}")
    lines.append("")
for address in (0x54bddb, 0x5887e6, 0x523314, 0x56826c, 0x5242e1, 0x5796a4, 0x5554f0):
    lines.append(f"STRING {address:08x}: {a.cstr(address)}")
(HERE / "ui-download-evidence.txt").write_text("\n".join(lines) + "\n", encoding="utf-8")
print("PASS: original hash, candidate branch decode, both combined-status callers; evidence saved.")
