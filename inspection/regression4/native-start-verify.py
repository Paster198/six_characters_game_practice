"""Read-only proof of the missing-AFF -> exact login dialog and success paths.

Optional argument: a prepared libcocos2dcpp.so. Does not write an engine/APK.
The separate path-verify.py verifies the proposed AFF getter change and assets.
"""
import hashlib
import json
import struct
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "inspection/native"))
import analyze as a

assert hashlib.sha256(a.data).hexdigest() == "72e42cb4925655ecfef98bf2dbf92a5ac05145eb005a531c96c11b927a46e6dc"
binary = Path(sys.argv[1]) if len(sys.argv) > 1 else a.path
data = binary.read_bytes()

def read(address, count):
    offset = a.off(address)
    return data[offset:offset + count]

def word(address):
    return struct.unpack("<I", read(address, 4))[0]

def sx(value, bits):
    return value - (1 << bits) if value & (1 << (bits - 1)) else value

def target(address):
    value = word(address)
    assert value & 0x7c000000 == 0x14000000
    return address + sx(value & 0x3ffffff, 26) * 4

# All ranges are intentionally untouched by earlier offline patches. They are
# the actual checks, callback construction/invoke, and final scene launch.
FINGERPRINTS = {
    0xd2a424: "40af309408000012",
    0xd2a484: "20070036e8f34b39e80600341f070071",
    0xd2a9d0: "880340f9002d40f928102294a803523868000036a00353f86ac2349433008052e8834b39682e003774010014",
    0xd2afc8: "73050036880340f9896b0090eb6d009029a11891002d40f9eac317916b013e91f3031791e9fb02f9f4ff02f9ea0b03f9ebe302f9f4e702f9f3f302f9e16b40f9e5c31791e6031791e2031b2ae30316aae40314aa7ced2794",
    0x1726654: "f60301aa104bd79720050036604b40f9f390d997c0040036",
    0x1726700: "a01240f9a06600b4080040f9081940f900013fd6",
    0xda5b94: "000440f9abc10f14",
    0x16ed3a8: "260040f9088440a9091840b9031040f9400440ad4a1040f904144529e00308aae203092ae00700adea1300f94151e297",
    0xf82900: "009c80529b622b94fc0300aae24f40b9e63740b9a8020012e10314aae3031b2ae403192ae5031f2ae7031aaaf32b00b9ff630039ff0b00f9f80b00b9e8830039ff0300b99ba1e197",
    0xf82a08: "e24f40b9e0031caae10314aae3031f2a1a2d2094e10300aae00315aaa3aa0194",
}
for address, expected in FINGERPRINTS.items():
    expected = bytes.fromhex(expected)
    assert a.read(address, len(expected)) == expected, hex(address)
    assert read(address, len(expected)) == expected, (str(binary), hex(address))

CALLS = {
    0xd2a424: 0x1956124,       # Actual AFF existence check
    0xd2b01c: 0x172660c,       # Download entry after a missing file
    0x1726658: 0xcf9298,       # Real account check remains intact
    0x1726664: 0xd8aa30,
    0xda5b98: 0x1196244,       # Exact login-to-unlock message
    0x16ed3d4: 0xf818d8,       # Success callback: startGameScene
    0xf82944: 0x7eafb0,        # GameScene constructor
    0xf82a18: 0x178de80,       # Loading scene
    0xf82a24: 0xfed4b0,        # Director::replaceScene
}
for call, destination in CALLS.items():
    assert target(call) == destination, hex(call)

# Relocations carry function pointers in this stripped shared library. Ensure
# the prepared binary retains them, then resolve the two std::function invokes.
rela = a.secs[".rela.dyn"]
assert data[rela["sh_offset"]:rela["sh_offset"] + rela["sh_size"]] == rela.data()
assert a.ptr(0x1a9a628 + 0x30) == 0xda5b94
assert a.ptr(0x1ada598 + 0x30) == 0x16ed388
assert "getRequiredAssetsAndTokenForStartGameScene" in a.cstr(a.ptr(a.ptr(0x1a9a628 - 8) + 8))
assert "songSelected" in a.cstr(a.ptr(a.ptr(0x1ada598 - 8) + 8))

def conditional(address, registers):
    """Evaluate the actual CBZ/CBNZ/TBZ/TBNZ word, not a guessed predicate."""
    value = word(address)
    reg = value & 31
    operand = registers.get(reg, 0)
    if value & 0x7e000000 == 0x34000000:
        if not value & 0x80000000:
            operand &= 0xffffffff
        take = bool(operand) == bool(value & 0x01000000)
        destination = address + sx(value >> 5 & 0x7ffff, 19) * 4
    elif value & 0x7e000000 == 0x36000000:
        bit = (value >> 19 & 31) | (value >> 26 & 32)
        take = bool(operand & (1 << bit)) == bool(value & 0x01000000)
        destination = address + sx(value >> 5 & 0x3fff, 14) * 4
    else:
        raise AssertionError(hex(value))
    return destination if take else address + 4

fixtures = []
for aff in (False, True):
    for audio in (False, True):
        pc = conditional(0xd2a484, {0: int(audio)})
        if pc == 0xd2a488:
            pc = conditional(0xd2a48c, {8: int(aff)})
        assert pc == (0xd2a490 if aff and audio else 0xd2a568)
        fixtures.append({"aff_exists": aff, "audio_exists": audio,
                         "next": "success_callback_path" if pc == 0xd2a490 else "download_error_path"})

# The cleanup branch does NOT immediately return on missing files. The missing
# resource path sets w19=1 at d2a9ec; TBZ therefore falls into download setup.
assert word(0xd2a9ec) == 0x52800033
assert conditional(0xd2afc8, {19: 1}) == 0xd2afcc
assert conditional(0xd2afc8, {19: 0}) == 0xd2b074
assert conditional(0x172665c, {0: 0}) == 0x1726700
assert conditional(0x1726668, {0: 0}) == 0x1726700

print(json.dumps({"status": "PASS", "binary": str(binary),
                  "preserved_instruction_ranges": len(FINGERPRINTS),
                  "resolved_calls": len(CALLS), "fixtures": fixtures,
                  "missing_file_offline_callback": "da5b94 -> 1196244",
                  "device_tested": False}, indent=2))
