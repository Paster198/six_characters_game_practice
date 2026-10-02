#include "practice_modifiers.h"
#include <assert.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>
#include <thread>
#include <initializer_list>

template<class T> void put(void* p, size_t offset, T value) {
    memcpy(static_cast<char*>(p) + offset, &value, sizeof value);
}
template<class T> T get(const void* p, size_t offset) {
    T value; memcpy(&value, static_cast<const char*>(p) + offset, sizeof value); return value;
}
struct alignas(8) Renderer { char bytes[0x300]{}; };
struct alignas(8) Logic { char bytes[0x80]{}; };

// Execute the actual emitted AArch64 adapter with a deliberately distant
// mapping and a helper that clobbers all permitted caller-saved registers.
// This checks the relocation/return contract, not just expected byte literals.
static void checkAbsoluteAdapter(uintptr_t base, uintptr_t mapping, uintptr_t helper, int actualMode) {
    unsigned char entry[16], thunk[64];
    practice_modifiers::testing::makeJump(entry, mapping);
    practice_modifiers::testing::makeModeThunk(thunk, base, helper);
    const uintptr_t call = base + 0x158bd2c, continuation = call + 16;
    uintptr_t registers[31], preserved[31];
    for (unsigned i = 0; i < 31; ++i) registers[i] = preserved[i] = 0x3456780000ULL + i * 0x100;
    const uintptr_t note = registers[23];
    const uint32_t type = 5;
    auto memory = [&](uintptr_t address, size_t size) -> const unsigned char* {
        if (address >= call && address + size <= call + sizeof entry) return entry + address - call;
        assert(address >= mapping && address + size <= mapping + sizeof thunk);
        return thunk + address - mapping;
    };
    uintptr_t pc = call;
    bool helperCalled = false;
    for (int steps = 0; pc != continuation; ++steps) {
        assert(steps < 20);
        uint32_t word; memcpy(&word, memory(pc, 4), 4);
        if ((word & 0xff000000u) == 0x58000000u) {
            int32_t literal = static_cast<int32_t>((word >> 5) & 0x7ffffu);
            if (literal & 0x40000) literal -= 0x80000;
            uintptr_t value; memcpy(&value, memory(pc + literal * 4, 8), 8);
            registers[word & 31] = value; pc += 4;
        } else if ((word & 0xfffffc1fu) == 0xd61f0000u) {
            pc = registers[(word >> 5) & 31];
        } else if ((word & 0xfffffc1fu) == 0xd63f0000u) {
            assert(!helperCalled && registers[(word >> 5) & 31] == helper);
            helperCalled = true;
            registers[0] = practice_modifiers::testing::selectedMode(actualMode);
            for (unsigned i = 1; i <= 18; ++i) registers[i] = 0xbadf0000u + i;
            registers[30] = pc + 4; pc += 4;
        } else if ((word & 0xffc00000u) == 0xb9400000u) {
            uintptr_t address = registers[(word >> 5) & 31] + ((word >> 10) & 4095) * 4;
            assert(address == note + 8);
            registers[word & 31] = type; pc += 4;
        } else { assert(!"Unexpected AArch64 adapter instruction"); }
    }
    assert(helperCalled);
    assert(registers[0] == static_cast<unsigned>(practice_modifiers::testing::selectedMode(actualMode)));
    assert(registers[8] == type && registers[19] == base + 0x1b4c4a8);
    assert(registers[30] == call + 4);
    for (unsigned i = 20; i <= 29; ++i) assert(registers[i] == preserved[i]);
}

int main() {
    using namespace practice_modifiers;
    using testing::selectedMode;
    assert(selectedMode(0) == 0);
    for (int retry = 0; retry != 20; ++retry) {
        ChartScope on(true);
        assert(selectedMode(0) == 3);
        for (int original = 1; original <= 6; ++original) assert(selectedMode(original) == original);
        std::thread background([] {
            assert(selectedMode(0) == 0);
            { ChartScope worker(true); assert(selectedMode(0) == 3); }
            assert(selectedMode(0) == 0);
        });
        background.join();
        { ChartScope off(false); assert(selectedMode(0) == 0);
            { ChartScope nested(true); assert(selectedMode(0) == 3); }
            assert(selectedMode(0) == 0);
        }
        assert(selectedMode(0) == 3);
    }
    assert(selectedMode(0) == 0);
    for (bool enabled : {false, true}) {
        ChartScope scope(enabled);
        for (int mode = 0; mode <= 6; ++mode) {
            checkAbsoluteAdapter(0x7000000000ULL, 0x1000000000ULL, 0x7600000000ULL, mode);
            checkAbsoluteAdapter(0x1000000000ULL, 0x7800000000ULL, 0x7200000000ULL, mode);
        }
    }

    constexpr uintptr_t base = 0x10000000;
    alignas(8) char scene[0x4e0]{}, track[0x400]{}, model[0x158]{}, chart[0x118]{};
    put(scene, 0, base + 0x1b262e8); put(scene, 0x3b0, uintptr_t(track)); put(scene, 0x3e0, uintptr_t(model));
    put(track, 0, base + 0x1b4b6f0); put(model, 0, base + 0x1b7cd48);
    put(model, 0x28, uintptr_t(chart)); put(chart, 0, base + 0x1ad9820); put(chart, 0xbc, 5000);
    Renderer renderers[7], children[3]; Logic notes[7], childLogic[3];
    uintptr_t types[] = {0x1a90640, 0x1ad6178, 0x1aa53c8, 0x1a91fc0, 0x1abd100, 0x1a90640, 0x1a91fc0};
    int times[] = {0, 5000, 800, 5000, 700, -1, 5001};
    size_t offsets[] = {0x2b4, 0x2c5, 0x2d9, 0x2d8, 0x2b4, 0x2b4, 0x2d8};
    uintptr_t top[7];
    for (int i = 0; i != 7; ++i) {
        put(&renderers[i], 0, base + types[i]); put(&renderers[i], 0x2a8, uintptr_t(&notes[i]));
        put(&notes[i], 0x18, times[i]); top[i] = uintptr_t(&renderers[i]);
    }
    for (int i = 0; i != 3; ++i) {
        put(&children[i], 0, base + 0x1aa53c8); put(&children[i], 0x2a8, uintptr_t(&childLogic[i]));
        // Children inherit parent, including times outside the normal range.
        put(&childLogic[i], 0x18, i == 0 ? -30 : i == 1 ? 6000 : 1000);
    }
    uintptr_t inArc[] = {uintptr_t(&children[0]), uintptr_t(&children[1])};
    uintptr_t outArc[] = {uintptr_t(&children[2])};
    put(&renderers[3], 0x2e8, uintptr_t(inArc)); put(&renderers[3], 0x2f0, uintptr_t(inArc + 2));
    put(&renderers[6], 0x2e8, uintptr_t(outArc)); put(&renderers[6], 0x2f0, uintptr_t(outArc + 1));
    put(track, 0x3b8, uintptr_t(top)); put(track, 0x3c0, uintptr_t(top + 7));
    assert(applyHidden(scene, base));
    for (int i = 0; i != 7; ++i) assert(get<uint8_t>(&renderers[i], offsets[i]) == (i < 5 ? 1 : 0));
    assert(get<uint8_t>(&children[0], 0x2d9) == 1 && get<uint8_t>(&children[1], 0x2d9) == 1);
    assert(get<uint8_t>(&children[2], 0x2d9) == 0);
    // Baseline partner hidden flags remain set even outside Path I's range.
    put(&renderers[5], 0x2b4, uint8_t(1)); assert(applyHidden(scene, base));
    assert(get<uint8_t>(&renderers[5], 0x2b4) == 1);
    // An invalid late child must be rejected before touching earlier notes.
    put(&renderers[0], 0x2b4, uint8_t(0)); put(&children[2], 0, uintptr_t(0));
    assert(!applyHidden(scene, base)); assert(get<uint8_t>(&renderers[0], 0x2b4) == 0);
    put(&children[2], 0, base + 0x1aa53c8);
    put(track, 0x3c0, uintptr_t(top) - 8); assert(!applyHidden(scene, base));
    put(track, 0x3c0, uintptr_t(top + 7)); put(chart, 0xbc, -1); assert(!applyHidden(scene, base));
    put(chart, 0xbc, 5000); put(scene, 0, uintptr_t(0)); assert(!applyHidden(scene, base));
    puts("PASS: modifier scopes, cross-thread isolation, distant absolute adapter execution/ABI, native hidden flags and child boundaries");
}
