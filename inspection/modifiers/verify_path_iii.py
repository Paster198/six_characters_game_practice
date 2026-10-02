"""Verify the native Path III constructor branches and our isolated call-site ABI."""
from pathlib import Path
import argparse
import re
import struct
import sys

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "inspection/python_libs"))
from elftools.elf.elffile import ELFFile

FINGERPRINTS = {
    # Two-instruction getter plus the first instruction of its neighbor.
    0xef9b28: "003840b9c0035fd6fd7bbea9",
    # LogicChart::init calls its constructor pass once, before sort/finalize.
    0x13d34f8: "e11b40f9e22f40b9e00314aa2edd0694800642a93f9eea97e00314aa2196fc97",
    # Exact call-site and every instruction before the next dynamic_cast.
    0x158bd18: "a82f00f008a947f9b70240f9080140f9007140f97fb7e597e80a40b9132e00b073a21291e22900f0fa03002ae00317aae10313aa42e01391e3031faae86f00f91c7d4093f93d1394c00300b4a82f00f0",
    # Native SimpleNote and HoldNote conversion branches, never replicated.
    0x158be64: "5f0f0071010a0054f3031baa768e41b8",
    0x158bf1c: "c8cc8c52c8eca772c0b240bd0101271e28008052c8d20239e86f40f90008211ec0b200bdd41a40b9c85200b968334039c8520139",
    0x158c748: "5f0f0071410c0054f3031baa768e41b8",
    0x158c800: "c8cc8c52c8eca772c0b240bd0101271e28008052c8d20239e86f40f90008211ec0b200bdd41a40b9c85200b968334039c8520139",
    # Arc height inversion remains native, with its original clamping.
    0x158d1d0: "a82f00b008a947f96923482d080140f9007140f951b2e5971f18007141020054e95b40f9e86340f9087d40933f0108eba9010054e95740f9290d088b681b40b92a2540291f010a6b6d0000541f01096beb0000541f01096be86340f908d5881ae86300f95f0f0071c10000548039291e8139281e02e4002f0968221e2868221e",
    # Every new GameScene reparses the asset and allocates a new LogicChart.
    0x134a940: "690a00b4e0c30091a1e300d1ad421c94e0c30091e103132afd8dee97e8c34039f70300aa68000036e02340f989421c94",
    0x134a9dc: "89421c94c002221e0190241e0018211ea6020012e5030091e00314aae10318aae20317aae3031f2ae403192ae703132a703bef97e8034039",
}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("binary", nargs="?", type=Path,
        default=ROOT / "inspection/lib/arm64-v8a/libcocos2dcpp.so")
    args = parser.parse_args()
    with args.binary.open("rb") as stream:
        elf = ELFFile(stream)
        assert elf["e_machine"] == "EM_AARCH64" and elf.elfclass == 64
        segments = [s for s in elf.iter_segments() if s["p_type"] == "PT_LOAD"]
        def read(address, size):
            for s in segments:
                if s["p_vaddr"] <= address and address + size <= s["p_vaddr"] + s["p_filesz"]:
                    stream.seek(address - s["p_vaddr"] + s["p_offset"])
                    return stream.read(size)
            raise AssertionError(f"unmapped address {address:#x}")
        for address, expected in FINGERPRINTS.items():
            value = bytes.fromhex(expected)
            assert read(address, len(value)) == value, f"instruction mismatch {address:#x}"
        text = elf.get_section_by_name(".text")
        calls = []
        mode_reads = []
        for i, (word,) in enumerate(struct.iter_unpack("<I", text.data())):
            if word & 0xfc000000 != 0x94000000:
                continue
            pc = text["sh_addr"] + i * 4
            distance = word & 0x3ffffff
            if distance & 0x2000000:
                distance -= 0x4000000
            target = pc + distance * 4
            if target == 0x158a9bc:
                calls.append(pc)
            if target == 0xef9b28 and 0x158a9bc <= pc < 0x158dcf4:
                mode_reads.append(pc)
        assert calls == [0x13d3504], "unexpected LogicChart constructor caller"
        assert mode_reads == [0x158b0d0, 0x158b52c, 0x158bb94, 0x158bd2c,
                              0x158bd78, 0x158c46c, 0x158d1e4]
        # Every other read compares only to 2 or 6. Actual mode 0 and 3 take
        # identical paths there; only w26's three-way note conversion changes.
        comparisons = {0x158b0d4: 0x7100081f, 0x158b534: 0x7100181f,
                       0x158bb98: 0x7100181f, 0x158bd7c: 0x7100181f,
                       0x158c470: 0x7100181f, 0x158d1e8: 0x7100181f}
        for address, expected in comparisons.items():
            assert struct.unpack("<I", read(address, 4))[0] == expected
    source = (ROOT / "native/practice_modifiers.cpp").read_text(encoding="utf-8")
    assert "constexpr uintptr_t kModeCall = 0x158bd2c;" in source
    site = re.search(r"kOriginalSite\[4\]\s*=\s*\{([^}]+)\}", source)
    assert site is not None
    expected_site = struct.pack("<4I", *[int(x, 16) for x in re.findall(r"0x([0-9a-f]+)u", site[1])])
    assert expected_site == bytes.fromhex("7fb7e597e80a40b9132e00b073a21291")
    assert "thread_local bool skyGroundRequested;" in source
    assert "skyGroundRequested && actual == 0 ? 3 : actual" in source
    assert "MAP_PRIVATE | MAP_ANONYMOUS" in source
    assert "allocateNear(" not in source and "makeModeThunk(thunk," in source
    print(f"PASS: {len(FINGERPRINTS)} Path III instruction ranges, single constructor call, "
          "seven mode reads, original getter and adjacent function intact")


if __name__ == "__main__":
    main()
