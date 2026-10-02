"""Read-only Path I renderer ABI fingerprint verification for the pinned engine."""
from pathlib import Path
import argparse
import struct
import sys

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "inspection/python_libs"))
from elftools.elf.elffile import ELFFile

FINGERPRINTS = {
    0x1325f64: "680240f9007140f9ef4eef971f040071f40300f9a1010054a87a41f9081540f913bd40b900018052f9d41c94687e60d3f40300aaf90300aa888600f8a0d33da9b4831ef8",
    0x13260e0: "760240f93f0314ebe0010054c81a40b9f8031f2a04000014392300913f0314eb40010054290340b93f01086b6cffff54290740b93f01086be9b79f1a3801182af6ffff17f8031f2a",
    0x963288: "18030012084542f900013fd6e89000f008a947f9b8d20a39",
    0x197e2e0: "1803001268000036a0035ff82974039498160b39",
    0xbcaa78: "28030012a8660b39",
    0x18e0e00: "f50304aab6000012cee9059476620b39",
    0x14d11e0: "d6020012084542f900013fd6a80240f9b6d20a39",
    0x169a464: "69d24a39ea64841200102e1e4801084b0a01221ec9060034680240f9e00313aa088542f900013fd6083040b909009e52e9c0a8722001271e",
    0xded1ac: "68164b39e8060034680240f9e00313aa088542f900013fd6083040b909009e52e9c0a8722001271ee803084b0101221e2018201e",
    0x9b7474: "6a664b39e964841209102e1e2801084b0a01221e00102e1eca060034680240f9e00313aa088542f900013fd6083040b909009e52e9c0a8722001271ee803084b",
    0x1497f34: "68624b3908060034680240f9e00313aa088542f900013fd6083040b98103271ee803084b0001221e0018211e0020291ee5010054680240f9",
    0xe2522c: "6ad24a39e964841208102e1e2801084b0901221e00102e1eca060034680240f9e00313aa088542f900013fd6083040b909009e52e9c0a8722001271ee803084b",
    0x18e12b4: "a10a40a960a20b9197d9cc97767641f9777a41f9df0217eb",
    0x902fdc: "685253398801003578da41f9198002911a800491d6b0109468f241f9e303002ae00318aae10319aa0085492de2031aaa46550e94",
}
# vtable: (init +0x538, update +0x510, update +0x518)
VTABLES = {
    0x1a90640: (0x963214, 0x169a2ac, 0x869508),
    0x1ad6178: (0x197e238, 0xc620f0, 0xded10c),
    0x1aa53c8: (0xbcaa0c, 0x9b7390, 0x869508),
    0x1a91fc0: (0x18e0da8, 0xc620f0, 0x1497ba0),
    0x1abd100: (0x14d1168, 0xe2512c, 0x869508),
}

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("binary", nargs="?", type=Path,
        default=ROOT / "inspection/lib/arm64-v8a/libcocos2dcpp.so")
    args = parser.parse_args()
    with args.binary.open("rb") as stream:
        elf = ELFFile(stream)
        assert elf["e_machine"] == "EM_AARCH64", "expected ARM64 ELF"
        segments = [s for s in elf.iter_segments() if s["p_type"] == "PT_LOAD"]
        rel = {r["r_offset"]: r["r_addend"]
               for r in elf.get_section_by_name(".rela.dyn").iter_relocations()
               if r["r_info_type"] == 1027}
        def read(address, size):
            for s in segments:
                if s["p_vaddr"] <= address and address + size <= s["p_vaddr"] + s["p_filesz"]:
                    stream.seek(address - s["p_vaddr"] + s["p_offset"])
                    return stream.read(size)
            raise AssertionError(f"unmapped address {address:#x}")
        def pointer(address):
            return rel.get(address, struct.unpack("<Q", read(address, 8))[0])
        for address, expected in FINGERPRINTS.items():
            value = bytes.fromhex(expected)
            assert read(address, len(value)) == value, f"instruction mismatch {address:#x}"
        for vt, expected in VTABLES.items():
            actual = tuple(pointer(vt + o) for o in (0x538, 0x510, 0x518))
            assert actual == expected, f"renderer vtable mismatch {vt:#x}"
            assert pointer(vt + 0x508) == 0x129a620, f"logic getter mismatch {vt:#x}"
    print(f"PASS: {len(FINGERPRINTS)} instruction ranges, {len(VTABLES)} renderer vtables, original Path I behavior intact")

if __name__ == "__main__":
    main()
