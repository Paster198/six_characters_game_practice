"""Read-only evidence for the local AFF -> downloader -> exact login dialog chain."""
from pathlib import Path
import gettext
import hashlib
import struct
import sys

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sys.path.insert(0, str(ROOT / "native"))
import analyze as a

SHA = "72e42cb4925655ecfef98bf2dbf92a5ac05145eb005a531c96c11b927a46e6dc"
assert hashlib.sha256(a.data).hexdigest() == SHA
KEY = "You must be online and logged in to unlock songs.\nLog in via Network on the main menu."
assert a.cstr(0x56ee36) == KEY
with (ROOT / "assets/assets/tl/zh-Hans.mo").open("rb") as fp:
    catalog = gettext.GNUTranslations(fp)
assert catalog.gettext(KEY) == "你需要登录来解锁歌曲\n通过主菜单的「网络」选项登录"
assert a.ptr(0x1a9a628 + 0x30) == 0xda5b94
assert a.read(0x9031d4, 4).hex() == "00080054"

# Evaluate the actual cleanup TBZ with both completion and missing-resource flags.
pc = 0xd2afc8
word, = struct.unpack("<I", a.read(pc, 4))
assert word & 0x7f000000 == 0x36000000
bit = ((word >> 31) << 5) | ((word >> 19) & 31)
reg = word & 31
imm = (word >> 5) & 0x3fff
if imm & 0x2000:
    imm -= 0x4000
target = pc + imm * 4
assert (reg, bit, target) == (19, 0, 0xd2b074)
def cleanup_next(w19):
    return target if not (w19 & (1 << bit)) else pc + 4
assert cleanup_next(0) == 0xd2b074
assert cleanup_next(1) == 0xd2afcc

ranges = [
    ("Actual AFF and music checks", 0xd2a418, 0x7c),
    ("Missing-resource flag", 0xd2a9d0, 0x2c),
    ("Cleanup retains downloader fallthrough", 0xd2afb4, 0x6c),
    ("Downloader offline checks", 0x172662c, 0x44),
    ("Downloader invokes error callback", 0x1726700, 0x18),
    ("Exact popup callback", 0xda5b94, 0x8),
    ("Localized dialog construction", 0x1196244, 0xac),
    ("World unlock lambda", 0x12e4514, 0x20),
    ("World unlock delegate wrapper", 0xd8c2f0, 0x1c),
    ("World unlock callback binding", 0x15986dc, 0x24),
]
lines = ["Original engine SHA256: " + SHA, "KEY: " + KEY,
         "ZH-HANS: " + catalog.gettext(KEY),
         "Cleanup TBZ: w19=0 -> return; w19=1 -> downloader, verified from real word.", ""]
for label, start, size in ranges:
    lines.append(label)
    for ins in a.md.disasm(a.read(start, size), start):
        lines.append(f"{ins.address:08x} {ins.bytes.hex():8s} {ins.mnemonic:8s} {ins.op_str}")
    lines.append("")
(HERE / "ui-login-unlock-evidence.txt").write_text("\n".join(lines) + "\n", encoding="utf-8")
print("PASS: original hash, exact localized message, callback relocation, AFF branch, cleanup truth table.")
