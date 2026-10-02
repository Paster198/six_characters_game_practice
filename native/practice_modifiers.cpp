#include "practice_modifiers.h"
#include <stddef.h>
#include <string.h>
#if defined(__ANDROID__) && defined(__aarch64__)
#include <sys/mman.h>
#include <unistd.h>
#endif

namespace practice_modifiers {
namespace {
thread_local bool skyGroundRequested;
const char* error = "";
uintptr_t installedBase;
constexpr uintptr_t kModeCall = 0x158bd2c;
// BL getter; LDR W8,[X23,#8]; ADRP X19; ADD X19,X19,#0x4a8.
// The ADRP is replayed as an absolute load in the out-of-line adapter.
constexpr uint32_t kOriginalSite[4] = {
    0x97e5b77fu, 0xb9400ae8u, 0xb0002e13u, 0x9112a273u
};

template<class T> T load(uintptr_t p, size_t offset = 0) {
    T value;
    memcpy(&value, reinterpret_cast<const void*>(p + offset), sizeof value);
    return value;
}
bool pointer(uintptr_t p) { return p >= 0x10000 && !(p & 7); }
bool vectorRange(uintptr_t first, uintptr_t last) {
    return first <= last && (first == last || pointer(first)) &&
        ((last - first) & 7) == 0 && (last - first) / 8 <= 2000000;
}
bool fail(const char* why) { error = why; return false; }
int selectedMode(int actual) {
    // Never override a real challenge, even if a caller accidentally leaves
    // a practice scope around its construction.
    return skyGroundRequested && actual == 0 ? 3 : actual;
}
void makeJump(void* output, uintptr_t destination) {
    const uint32_t code[2] = {0x58000051u, 0xd61f0220u}; // LDR X17,+8; BR X17
    memcpy(output, code, sizeof code);
    memcpy(static_cast<char*>(output) + 8, &destination, sizeof destination);
}
void makeModeThunk(void* output, uintptr_t imageBase, uintptr_t helper) {
    // No relative branch to a separately mapped page: Android may ignore
    // mmap hints, so the old +/-128 MiB island could fail on real devices.
    // BLR obtains the native mode, then reproduce every overwritten effect,
    // including the original BL's LR and the PC-relative ADRP/ADD pair.
    const uint32_t code[8] = {
        0x58000110u, // LDR X16, literal +32 (helper)
        0xd63f0200u, // BLR X16
        0xb9400ae8u, // LDR W8,[X23,#8]
        0x580000f3u, // LDR X19, literal +28 (original RTTI pointer)
        0x5800011eu, // LDR X30, literal +32 (original BL return address)
        0x58000131u, // LDR X17, literal +36 (original continuation)
        0xd61f0220u, // BR X17
        0xd503201fu, // NOP / 8-byte literal alignment
    };
    const uintptr_t pointers[4] = {
        helper, imageBase + 0x1b4c4a8, imageBase + kModeCall + 4,
        imageBase + kModeCall + sizeof(kOriginalSite)
    };
    memcpy(output, code, sizeof code);
    memcpy(static_cast<char*>(output) + sizeof code, pointers, sizeof pointers);
}

#if defined(__ANDROID__) && defined(__aarch64__)
// The original getter has ABI int(ChallengeManager*) and is only 8 bytes.
// Adapt its one call site instead of overwriting its adjacent function.
__attribute__((noinline)) int modeForNewNote(void* manager) {
    return selectedMode(load<int>(reinterpret_cast<uintptr_t>(manager), 0x38));
}

#endif

constexpr uintptr_t kTap = 0x1a90640, kHold = 0x1ad6178;
constexpr uintptr_t kArcTap = 0x1aa53c8, kArc = 0x1a91fc0;
constexpr uintptr_t kFlick = 0x1abd100;
size_t hiddenOffset(uintptr_t vtable, uintptr_t base) {
    if (vtable == base + kTap || vtable == base + kFlick) return 0x2b4;
    if (vtable == base + kHold) return 0x2c5;
    if (vtable == base + kArcTap) return 0x2d9;
    if (vtable == base + kArc) return 0x2d8;
    return 0;
}

bool visitRenderer(uintptr_t renderer, uintptr_t base, int duration, bool write,
                   size_t& visited) {
    if (!pointer(renderer) || ++visited > 2000000) return false;
    uintptr_t vtable = load<uintptr_t>(renderer);
    size_t offset = hiddenOffset(vtable, base);
    if (!offset) return true; // Other renderer classes retain native behavior.
    uintptr_t logic = load<uintptr_t>(renderer, 0x2a8);
    if (!pointer(logic)) return false;
    int time = load<int>(logic, 0x18);
    bool inRange = time >= 0 && time <= duration;
    if (vtable == base + kArc) {
        uintptr_t first = load<uintptr_t>(renderer, 0x2e8);
        uintptr_t last = load<uintptr_t>(renderer, 0x2f0);
        if (!vectorRange(first, last)) return false;
        for (uintptr_t it = first; it != last; it += 8) {
            uintptr_t child = load<uintptr_t>(it);
            if (!pointer(child) || ++visited > 2000000 ||
                load<uintptr_t>(child) != base + kArcTap) return false;
            // Native Path I passes the parent arc's flag to every ArcTap;
            // a child's own time must not change that boundary decision.
            if (write && inRange) *reinterpret_cast<uint8_t*>(child + 0x2d9) = 1;
        }
    }
    if (write && inRange) *reinterpret_cast<uint8_t*>(renderer + offset) = 1;
    return true;
}
}

ChartScope::ChartScope(bool enabled) : previous_(skyGroundRequested) {
    skyGroundRequested = enabled;
}
ChartScope::~ChartScope() { skyGroundRequested = previous_; }
const char* lastError() { return error; }

bool initialize(uintptr_t imageBase) {
    if (installedBase) return installedBase == imageBase || fail("Modifier engine base changed");
#if defined(__ANDROID__) && defined(__aarch64__)
    if (!imageBase || memcmp(reinterpret_cast<const void*>(imageBase + kModeCall),
                            kOriginalSite, sizeof kOriginalSite) ||
        load<uint32_t>(imageBase + 0xef9b28) != 0xb9403800u ||
        load<uint32_t>(imageBase + 0xef9b2c) != 0xd65f03c0u)
        return fail("Path III call-site fingerprint mismatch");
    const long systemPage = sysconf(_SC_PAGESIZE);
    if (systemPage < 4096 || (systemPage & (systemPage - 1)))
        return fail("Unsupported modifier page size");
    const size_t pageSize = static_cast<size_t>(systemPage);
    const uintptr_t call = imageBase + kModeCall;
    void* thunk = mmap(nullptr, pageSize, PROT_READ | PROT_WRITE,
                       MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (thunk == MAP_FAILED) return fail("Cannot allocate the Path III adapter");
    makeModeThunk(thunk, imageBase, reinterpret_cast<uintptr_t>(&modeForNewNote));
    __builtin___clear_cache(static_cast<char*>(thunk), static_cast<char*>(thunk) + 64);
    if (mprotect(thunk, pageSize, PROT_READ | PROT_EXEC)) {
        munmap(thunk, pageSize);
        return fail("Cannot make the Path III adapter executable");
    }
    void* codePage = reinterpret_cast<void*>(call & ~(uintptr_t(pageSize) - 1));
    if (mprotect(codePage, pageSize, PROT_READ | PROT_WRITE | PROT_EXEC)) {
        munmap(thunk, pageSize);
        return fail("Cannot update the Path III call site");
    }
    // Called on the GL thread before its only LogicChart-construction caller.
    // This has the same absolute detour form as the existing practice hooks.
    makeJump(reinterpret_cast<void*>(call), reinterpret_cast<uintptr_t>(thunk));
    __builtin___clear_cache(reinterpret_cast<char*>(call), reinterpret_cast<char*>(call + 16));
    if (mprotect(codePage, pageSize, PROT_READ | PROT_EXEC)) {
        // The page is still writable here. Undo before returning failure.
        memcpy(reinterpret_cast<void*>(call), kOriginalSite, sizeof kOriginalSite);
        __builtin___clear_cache(reinterpret_cast<char*>(call), reinterpret_cast<char*>(call + 16));
        mprotect(codePage, pageSize, PROT_READ | PROT_EXEC);
        // Keep the adapter mapped: a concurrent caller could already be using
        // it. The fallback adapter remains valid and the scope is disabled.
        return fail("Cannot restore Path III code page protection");
    }
    installedBase = imageBase;
    error = "";
    return true;
#else
    (void)imageBase;
    return fail("Path III adapter requires Android ARM64");
#endif
}

bool applyHidden(void* object, uintptr_t imageBase) {
    static_assert(sizeof(uintptr_t) == 8, "This APK helper requires 64-bit ABI");
    uintptr_t scene = reinterpret_cast<uintptr_t>(object);
    if (!pointer(scene) || load<uintptr_t>(scene) != imageBase + 0x1b262e8)
        return fail("Path I GameScene ABI mismatch");
    uintptr_t track = load<uintptr_t>(scene, 0x3b0);
    uintptr_t model = load<uintptr_t>(scene, 0x3e0);
    if (!pointer(track) || load<uintptr_t>(track) != imageBase + 0x1b4b6f0 ||
        !pointer(model) || load<uintptr_t>(model) != imageBase + 0x1b7cd48)
        return fail("Path I TrackLayer/GameModel ABI mismatch");
    uintptr_t chart = load<uintptr_t>(model, 0x28);
    if (!pointer(chart) || load<uintptr_t>(chart) != imageBase + 0x1ad9820)
        return fail("Path I LogicChart ABI mismatch");
    int duration = load<int>(chart, 0xbc);
    uintptr_t first = load<uintptr_t>(track, 0x3b8);
    uintptr_t last = load<uintptr_t>(track, 0x3c0);
    if (duration < 0 || !vectorRange(first, last))
        return fail("Path I renderer vector is invalid");
    // Validate all known renderers and ArcTap child vectors before changing
    // any flag, so a rejected scene retains the original visual state.
    for (unsigned pass = 0; pass != 2; ++pass) {
        size_t visited = 0;
        for (uintptr_t it = first; it != last; it += 8) {
            if (!visitRenderer(load<uintptr_t>(it), imageBase, duration, pass != 0, visited))
                return fail("Path I renderer ABI mismatch");
        }
    }
    error = "";
    return true;
}

#if defined(PRACTICE_MODIFIERS_TEST)
namespace testing {
int selectedMode(int actual) { return practice_modifiers::selectedMode(actual); }
void makeJump(void* output, uintptr_t destination) { practice_modifiers::makeJump(output, destination); }
void makeModeThunk(void* output, uintptr_t base, uintptr_t helper) { practice_modifiers::makeModeThunk(output, base, helper); }
}
#endif
}
