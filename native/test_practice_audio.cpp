// Host-only contract tests. These do not validate FMOD's sound quality or a
// device's latency; they exercise our transaction and provider ABI handling.
#include "practice_audio.h"
#include <cassert>
#include <cmath>
#include <cstdio>
#include <cstring>
#include <limits>
#include <vector>

namespace {
struct Dsp { float pitch = 1; bool bypass = true; bool attached = false; };
struct Slot { void* sound; void* channel; } slots[10];
alignas(8) unsigned char provider[160]{};
int fakeGroup, fakeSystem, fakeSound, fakeChannel, replacementGroup, replacementSystem;
void* liveGroup = &fakeGroup;
void* liveSystem = &fakeSystem;
float groupPitch = 1;
unsigned position = 0;
std::vector<Dsp*> dsps;
int lockDepth = 0;
const char* failName = nullptr;
int failCountdown = 0;
int seekSlot = -1;
const char* missingSymbol = nullptr;
bool fmodCallsAllowed = true;
int fmodCalls = 0;
void checkFmodCall() { assert(fmodCallsAllowed); ++fmodCalls; }
bool fail(const char* name) {
    if (failName && !std::strcmp(failName, name) && --failCountdown == 0) {
        failName = nullptr;
        return true;
    }
    return false;
}
void inject(const char* name, int countdown = 1) { failName = name; failCountdown = countdown; }
int groupGetSystem(void* target, void** out) { checkFmodCall(); assert(target == liveGroup); *out = liveSystem; return 0; }
int groupGetPitch(void* target, float* out) { checkFmodCall(); assert(target == liveGroup); *out = groupPitch; return 0; }
int groupSetPitch(void* target, float value) {
    checkFmodCall();
    assert(target == liveGroup);
    assert(lockDepth == 1);
    if (fail("pitch")) return 77;
    groupPitch = value;
    return 0;
}
int groupAddDsp(void* target, int index, void* value) {
    checkFmodCall();
    assert(target == liveGroup);
    assert(index == -1 && lockDepth == 1);
    if (fail("attach")) return 78;
    static_cast<Dsp*>(value)->attached = true;
    return 0;
}
int groupRemoveDsp(void* target, void* value) {
    checkFmodCall();
    assert(target == liveGroup);
    if (fail("detach")) return 79;
    static_cast<Dsp*>(value)->attached = false;
    return 0;
}
int systemCreateDsp(void* target, int type, void** out) {
    checkFmodCall();
    assert(target == liveSystem);
    assert(type == 13 && lockDepth == 1);
    if (fail("create")) return 80;
    Dsp* dsp = new Dsp;
    dsps.push_back(dsp);
    *out = dsp;
    return 0;
}
int systemLock(void* target) { checkFmodCall(); assert(target == liveSystem && lockDepth == 0); if (fail("lock")) return 81; ++lockDepth; return 0; }
int systemUnlock(void* target) { checkFmodCall(); assert(target == liveSystem && lockDepth == 1); --lockDepth; return 0; }
int dspParameter(void* object, int parameter, float value) {
    checkFmodCall();
    assert(lockDepth == 1);
    if (fail("parameter")) return 82;
    if (parameter == 0) {
        assert(value >= .5f && value <= 2.f);
        static_cast<Dsp*>(object)->pitch = value;
    } else assert(parameter == 1 && value == 1024.f);
    return 0;
}
int dspBypass(void* object, int value) {
    checkFmodCall();
    if (fail("bypass")) return 83;
    static_cast<Dsp*>(object)->bypass = value;
    return 0;
}
int dspRelease(void* object) {
    checkFmodCall();
    auto* dsp = static_cast<Dsp*>(object);
    assert(!dsp->attached);
    for (auto it = dsps.begin(); it != dsps.end(); ++it) {
        if (*it == dsp) { dsps.erase(it); delete dsp; return 0; }
    }
    assert(false); return 84;
}
int dspReset(void*) { checkFmodCall(); return fail("reset") ? 85 : 0; }
int channelPosition(void* channel, unsigned* out, unsigned units) {
    checkFmodCall();
    assert(channel == &fakeChannel && units == 1);
    if (fail("position")) return 86;
    *out = position;
    return 0;
}
int soundLength(void* sound, unsigned* out, unsigned units) {
    checkFmodCall();
    assert(sound == &fakeSound && units == 1);
    *out = 180000;
    return 0;
}
void providerSeek(void* object, int ms, int index) {
    checkFmodCall();
    assert(object == provider);
    seekSlot = index;
    position = static_cast<unsigned>(ms);
}
void* resolver(const char*, const char* name) {
    if (missingSymbol && !std::strcmp(missingSymbol, name)) return nullptr;
#define SYMBOL(n, fn) if (!std::strcmp(name, n)) return reinterpret_cast<void*>(&fn)
    SYMBOL("FMOD_ChannelGroup_GetSystemObject", groupGetSystem);
    SYMBOL("FMOD_ChannelGroup_GetPitch", groupGetPitch);
    SYMBOL("FMOD_ChannelGroup_SetPitch", groupSetPitch);
    SYMBOL("FMOD_ChannelGroup_AddDSP", groupAddDsp);
    SYMBOL("FMOD_ChannelGroup_RemoveDSP", groupRemoveDsp);
    SYMBOL("FMOD_System_CreateDSPByType", systemCreateDsp);
    SYMBOL("FMOD_System_LockDSP", systemLock);
    SYMBOL("FMOD_System_UnlockDSP", systemUnlock);
    SYMBOL("FMOD_DSP_SetParameterFloat", dspParameter);
    SYMBOL("FMOD_DSP_SetBypass", dspBypass);
    SYMBOL("FMOD_DSP_Release", dspRelease);
    SYMBOL("FMOD_DSP_Reset", dspReset);
    SYMBOL("FMOD_Channel_GetPosition", channelPosition);
    SYMBOL("FMOD_Sound_GetLength", soundLength);
    SYMBOL("_ZN24AudioProviderFMODAndroid14setBGMPositionEii", providerSeek);
#undef SYMBOL
    return nullptr;
}
void prepare() {
    assert(practice_audio::shutdown());
    assert(dsps.empty());
    assert(lockDepth == 0);
    liveGroup = &fakeGroup;
    liveSystem = &fakeSystem;
    void* group = liveGroup;
    void* begin = slots;
    void* end = slots + 10;
    std::memcpy(provider + 0x18, &group, 8);
    std::memcpy(provider + 0x38, &begin, 8);
    std::memcpy(provider + 0x40, &end, 8);
    std::memcpy(provider + 0x48, &end, 8);
    for (auto& slot : slots) slot = {&fakeSound, &fakeChannel};
    groupPitch = 1;
    assert(practice_audio::initialize(provider));
}
void assertAudio(float expectedRate) {
    assert(std::fabs(groupPitch - expectedRate) < .00001f);
    float pitch = groupPitch;
    for (auto* dsp : dsps) if (dsp->attached && !dsp->bypass) pitch *= dsp->pitch;
    assert(std::fabs(pitch - 1.f) < .00001f);
    assert(std::fabs(practice_audio::getRate() - expectedRate) < .00001f);
    assert(lockDepth == 0);
}
}

int main() {
    using namespace practice_audio;
    setSymbolResolverForTests(resolver);
    assert(!initialize(nullptr));
    assert(!setRate(.5f));
    prepare();
    assert(setRate(.5f)); assertAudio(.5f);
    assert(setRate(2.f)); assertAudio(2.f);
    assert(setRate(2.5f)); assertAudio(2.5f);
    groupPitch = 1.f; // Simulate original chart initialization resetting pitch.
    assert(initialize(provider));
    assert(setRate(2.5f)); assertAudio(2.5f);
    assert(!setRate(.49f)); assertAudio(2.5f);
    assert(!setRate(2.51f)); assertAudio(2.5f);
    assert(!setRate(std::numeric_limits<float>::quiet_NaN())); assertAudio(2.5f);
    assert(!setRate(std::numeric_limits<float>::infinity())); assertAudio(2.5f);
    assert(reset()); assertAudio(1.f);
    for (const char* operation : {"parameter", "bypass", "pitch", "lock"}) {
        assert(setRate(.8f));
        inject(operation);
        assert(!setRate(2.5f));
        assertAudio(.8f);
        assert(lastError()[0]);
        assert(lastFmodError() != 0);
    }
    for (const char* operation : {"create", "attach", "parameter", "bypass"}) {
        prepare();
        inject(operation, 2);
        assert(!setRate(2.5f));
        assertAudio(1.f);
        assert(dsps.empty());
    }
    prepare();
    assert(setRate(2.5f));
    assert(getDuration() == 180000);
    assert(seek(12999, 2));
    assert(seekSlot == 2 && getPosition(2) == 12999);
    assert(!seek(-1));
    assert(!seek(180000));
    assert(getPosition(-1) == -1);
    assert(getPosition(10) == -1);
    slots[3].channel = nullptr;
    assert(getPosition(3) == -1);
    inject("position"); assert(getPosition() == -1);
    inject("reset"); assert(!seek(1000));
    assertAudio(2.5f);
    assert(shutdown());
    assert(dsps.empty() && !isInitialized() && groupPitch == 1.f);
    missingSymbol = "FMOD_DSP_SetParameterFloat";
    assert(!initialize(provider));
    assert(!isInitialized());
    missingSymbol = nullptr;
    assert(initialize(provider));
    assert(setRate(.5f));
    inject("detach"); assert(!shutdown());
    assert(isInitialized());
    assert(shutdown());
    assert(dsps.empty() && groupPitch == 1.f && lockDepth == 0);
    prepare();
    assert(setRate(2.5f));
    assert(!setRate(3.f)); // Destroyed-provider cleanup also clears stale errors.
    // Simulate destruction owned by FMOD.close, not by our module. Leaving
    // dangling DSP handles and invalid provider bytes exposes accidental use.
    for (auto* dsp : dsps) delete dsp;
    dsps.clear();
    std::memset(provider, 0xa5, sizeof(provider));
    fmodCallsAllowed = false;
    int callsBeforeForget = fmodCalls;
    forgetDestroyedProvider();
    assert(fmodCalls == callsBeforeForget);
    assert(!isInitialized() && getRate() == 1.f);
    assert(!lastError()[0] && lastFmodError() == 0);
    assert(shutdown());
    assert(!setRate(.5f));
    assert(getPosition() == -1 && getDuration() == -1);
    forgetDestroyedProvider(); // Idempotent while FMOD remains unavailable.
    assert(fmodCalls == callsBeforeForget);
    fmodCallsAllowed = true;
    prepare(); // The recreated Activity may reuse the exact provider address.
    assert(fmodCalls > callsBeforeForget && isInitialized());
    assert(setRate(.5f)); assertAudio(.5f);
    assert(shutdown());
    assert(dsps.empty() && lockDepth == 0);
    prepare();
    assert(setRate(2.5f));
    // Same provider address, replacement group/system: old DSPs have already
    // been destroyed by FMOD. No stale release or group call is permitted.
    for (auto* dsp : dsps) delete dsp;
    dsps.clear();
    liveGroup = &replacementGroup; liveSystem = &replacementSystem;
    groupPitch = 1.f;
    std::memcpy(provider + 0x18, &liveGroup, 8);
    assert(initialize(provider));
    assert(getRate() == 1.f);
    assert(setRate(2.5f)); assertAudio(2.5f);
    // Also detect a system lifetime change when the group handle is reused.
    for (auto* dsp : dsps) delete dsp;
    dsps.clear();
    liveSystem = &fakeSystem;
    groupPitch = 1.f;
    assert(initialize(provider));
    assert(setRate(.5f)); assertAudio(.5f);
    for (auto* dsp : dsps) delete dsp;
    dsps.clear();
    void* noGroup = nullptr;
    std::memcpy(provider + 0x18, &noGroup, 8);
    assert(!initialize(provider));
    assert(!isInitialized());
    assert(shutdown());
    std::puts("PASS: pitch preservation math, 0.5-2.5x bounds, transactional rollback, partial setup cleanup, provider ABI seek, duration, error propagation, retryable shutdown, zero-call destroyed-provider cleanup, unchanged-rate reapply, replacement-group/system reinitialize");
}
