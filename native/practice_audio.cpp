#include "practice_audio.h"

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <limits>
#ifndef PRACTICE_AUDIO_TEST
#include <dlfcn.h>
#endif

namespace practice_audio {
namespace {
// Verified in this APK's arm64 libfmodProvider.so (FMOD version 2.03.07):
// +0x18: FMOD::ChannelGroup* for main BGM and scheduled song effects.
// +0x38/+0x40/+0x48: vector begin/end/capacity, ten 16-byte BGM slots.
// Each slot is { FMOD::Sound*, FMOD::Channel* }. Slot zero is main BGM.
// getBGMPosition at 0x2cc70 uses FMOD_TIMEUNIT_MS (1).
// setBGMPosition at 0x26efc has ABI (this, int milliseconds, int slot).
// Its virtual slot is 0x40; getBGMPosition's slot is 0x38.
// Only arm64 is supported; do not reuse these offsets with armeabi-v7a.
static_assert(sizeof(void*) == 8, "practice_audio requires a 64-bit provider ABI");
constexpr unsigned kMilliseconds = 1;
constexpr int kPitchShift = 13;
constexpr int kDspHead = -1;
constexpr int kPitchParameter = 0;
constexpr int kFftSizeParameter = 1;
constexpr float kFftSize = 1024.0f;
using Result = int;
using ProviderSeek = void (*)(void*, int, int);
struct Api {
    Result (*groupGetSystem)(void*, void**);
    Result (*groupGetPitch)(void*, float*);
    Result (*groupSetPitch)(void*, float);
    Result (*groupAddDsp)(void*, int, void*);
    Result (*groupRemoveDsp)(void*, void*);
    Result (*systemCreateDsp)(void*, int, void**);
    Result (*systemLock)(void*);
    Result (*systemUnlock)(void*);
    Result (*dspParameter)(void*, int, float);
    Result (*dspBypass)(void*, int);
    Result (*dspRelease)(void*);
    Result (*dspReset)(void*);
    Result (*channelPosition)(void*, unsigned*, unsigned);
    Result (*soundLength)(void*, unsigned*, unsigned);
    ProviderSeek providerSeek;
};
struct Dsp { void* value; bool attached; };
Api api{};
void* provider = nullptr;
void* group = nullptr;
void* system = nullptr;
Dsp dsps[2]{};
float basePitch = 1.0f;
float rate = 1.0f;
char error[256]{};
int fmodError = 0;
#ifdef PRACTICE_AUDIO_TEST
SymbolResolver resolver = nullptr;
#else
void* fmodLibrary = nullptr;
void* providerLibrary = nullptr;
#endif

void clearError() { error[0] = 0; fmodError = 0; }
bool fail(const char* operation, int result = -1) {
    if (!error[0]) {
        std::snprintf(error, sizeof(error), "%s (code %d)", operation, result);
        fmodError = result;
    }
    return false;
}
bool check(Result result, const char* operation) {
    return result == 0 || fail(operation, result);
}
template<class T> T readAt(void* object, std::size_t offset) {
    T result;
    std::memcpy(&result, static_cast<unsigned char*>(object) + offset, sizeof(result));
    return result;
}
template<class T> bool resolve(T& target, const char* library, const char* name) {
#ifdef PRACTICE_AUDIO_TEST
    void* result = resolver ? resolver(library, name) : nullptr;
#else
    void*& handle = std::strcmp(library, "libfmod.so") == 0 ? fmodLibrary : providerLibrary;
    if (!handle) handle = dlopen(library, RTLD_NOW | RTLD_LOCAL);
    void* result = handle ? dlsym(handle, name) : nullptr;
#endif
    if (!result) return fail(name);
    static_assert(sizeof(target) == sizeof(result), "function pointer ABI");
    std::memcpy(&target, &result, sizeof(result));
    return true;
}
bool resolveApi() {
#define FMOD(member, name) if (!resolve(api.member, "libfmod.so", name)) return false
    FMOD(groupGetSystem, "FMOD_ChannelGroup_GetSystemObject");
    FMOD(groupGetPitch, "FMOD_ChannelGroup_GetPitch");
    FMOD(groupSetPitch, "FMOD_ChannelGroup_SetPitch");
    FMOD(groupAddDsp, "FMOD_ChannelGroup_AddDSP");
    FMOD(groupRemoveDsp, "FMOD_ChannelGroup_RemoveDSP");
    FMOD(systemCreateDsp, "FMOD_System_CreateDSPByType");
    FMOD(systemLock, "FMOD_System_LockDSP");
    FMOD(systemUnlock, "FMOD_System_UnlockDSP");
    FMOD(dspParameter, "FMOD_DSP_SetParameterFloat");
    FMOD(dspBypass, "FMOD_DSP_SetBypass");
    FMOD(dspRelease, "FMOD_DSP_Release");
    FMOD(dspReset, "FMOD_DSP_Reset");
    FMOD(channelPosition, "FMOD_Channel_GetPosition");
    FMOD(soundLength, "FMOD_Sound_GetLength");
#undef FMOD
    return resolve(api.providerSeek, "libfmodProvider.so",
                   "_ZN24AudioProviderFMODAndroid14setBGMPositionEii");
}
bool slot(int index, void*& sound, void*& channel) {
    if (!provider) return fail("audio provider is not initialized");
    auto begin = readAt<std::uintptr_t>(provider, 0x38);
    auto end = readAt<std::uintptr_t>(provider, 0x40);
    auto capacity = readAt<std::uintptr_t>(provider, 0x48);
    if (index < 0 || !begin || end < begin || capacity < end ||
        (end - begin) % 16 || (end - begin) / 16 > 10 ||
        static_cast<std::uintptr_t>(index) >= (end - begin) / 16)
        return fail("invalid BGM slot/provider ABI");
    void* entry = reinterpret_cast<void*>(begin + static_cast<std::uintptr_t>(index) * 16);
    sound = readAt<void*>(entry, 0);
    channel = readAt<void*>(entry, 8);
    return (sound && channel) || fail("BGM slot is not loaded");
}

// DSP state changes run with the mixer locked, so no audio block can observe
// the temporary uncompensated pitch between calls. Check rollback calls too.
bool applyLocked(float value) {
    // One DSP covers 0.5..2.0. Above 2x, two legal factors compose to 1/r.
    float factors[2] = {value > 2.0f ? 0.5f : 1.0f / value,
                        value > 2.0f ? 2.0f / value : 1.0f};
    bool ok = true;
    for (int i = 0; i < 2; ++i) {
        if (!dsps[i].value) {
            if (value != 1.0f) ok = fail("missing pitch-shift DSP");
            continue;
        }
        // Parameter values are set even when bypassed, keeping rollback exact.
        if (!check(api.dspParameter(dsps[i].value, kPitchParameter, factors[i]), "DSP pitch parameter")) ok = false;
        if (!check(api.dspBypass(dsps[i].value, factors[i] == 1.0f ? 1 : 0), "DSP bypass")) ok = false;
    }
    if (!check(api.groupSetPitch(group, basePitch * value), "BGM group pitch")) ok = false;
    return ok;
}
bool releaseDspsLocked() {
    bool ok = true;
    for (auto& dsp : dsps) {
        if (!dsp.value) continue;
        if (dsp.attached) {
            if (!check(api.groupRemoveDsp(group, dsp.value), "detach pitch-shift DSP")) { ok = false; continue; }
            dsp.attached = false;
        }
        if (!check(api.dspRelease(dsp.value), "release pitch-shift DSP")) { ok = false; continue; }
        dsp.value = nullptr;
    }
    return ok;
}
bool createDspsLocked() {
    for (auto& dsp : dsps) {
        if (dsp.value && dsp.attached) continue;
        if (!dsp.value && !check(api.systemCreateDsp(system, kPitchShift, &dsp.value), "create pitch-shift DSP")) return false;
        if (!dsp.value) return fail("FMOD returned a null pitch-shift DSP");
        if (!check(api.dspBypass(dsp.value, 1), "initial DSP bypass") ||
            !check(api.dspParameter(dsp.value, kFftSizeParameter, kFftSize), "DSP FFT size") ||
            !check(api.groupAddDsp(group, kDspHead, dsp.value), "attach pitch-shift DSP")) return false;
        dsp.attached = true;
    }
    return true;
}
bool restoreLocked(float oldRate) {
    if (applyLocked(oldRate)) return true;
    // If exact rollback itself fails, attempt dry normal-speed playback.
    bool dry = true;
    for (auto& dsp : dsps)
        if (dsp.value && !check(api.dspBypass(dsp.value, 1), "emergency DSP bypass")) dry = false;
    if (!check(api.groupSetPitch(group, basePitch), "emergency normal speed")) dry = false;
    if (dry) rate = 1.0f;
    return false;
}
}

bool initialize(void* value) {
    clearError();
    if (!value) return fail("null provider");
    void* candidateGroup = readAt<void*>(value, 0x18);
    if (provider == value) {
        if (candidateGroup == group && candidateGroup) {
            void* candidateSystem = nullptr;
            Result result = api.groupGetSystem(candidateGroup, &candidateSystem);
            if (result != 0 || !candidateSystem) {
                // Initialization can be retried while FMOD is between lifetimes.
                // Discard the old handles; releasing them now is unsafe.
                forgetDestroyedProvider();
                return fail("cached BGM group is no longer valid", result != 0 ? result : -1);
            }
            if (candidateSystem == system) return true;
        }
        // A reused provider address is not proof of the same audio lifetime.
        // FMOD owns and destroys DSPs with its old system. Never release cached
        // DSPs through a replacement group/system; bind the new handles below.
        forgetDestroyedProvider();
    }
    if (provider && !shutdown()) return false;
    if (!resolveApi()) return false;
    if (!candidateGroup) return fail("provider BGM group is not ready");
    void* candidateSystem = nullptr;
    float candidatePitch = 1.0f;
    if (!check(api.groupGetSystem(candidateGroup, &candidateSystem), "BGM group system") ||
        !check(api.groupGetPitch(candidateGroup, &candidatePitch), "initial BGM group pitch")) return false;
    if (!candidateSystem || !std::isfinite(candidatePitch) || candidatePitch <= 0.0f)
        return fail("invalid initial FMOD state");
    provider = value;
    group = candidateGroup;
    system = candidateSystem;
    basePitch = candidatePitch;
    rate = 1.0f;
    return true;
}

bool setRate(float value) {
    clearError();
    if (!provider) return fail("audio provider is not initialized");
    if (!std::isfinite(value) || value < 0.5f || value > 2.5f) return fail("rate must be between 0.50 and 2.50");
    // Always reapply, including an unchanged requested rate. The game may reset
    // group pitch during chart retries while this module's desired rate persists.
    if (!check(api.systemLock(system), "lock FMOD mixer")) return false;
    float oldRate = rate;
    bool ok = value == 1.0f || createDspsLocked();
    if (ok) ok = applyLocked(value);
    if (ok) rate = value;
    else {
        restoreLocked(oldRate);
        if (oldRate == 1.0f) releaseDspsLocked();
    }
    if (!check(api.systemUnlock(system), "unlock FMOD mixer")) ok = false;
    return ok;
}

bool reset() { return setRate(1.0f); }

bool shutdown() {
    clearError();
    if (!provider) return true;
    if (!check(api.systemLock(system), "lock FMOD mixer for shutdown")) return false;
    bool ok = applyLocked(1.0f);
    if (ok) rate = 1.0f;
    // Removing DSPs after pitch restoration avoids leaving altered audio behind.
    if (ok && !releaseDspsLocked()) ok = false;
    if (!check(api.systemUnlock(system), "unlock FMOD mixer after shutdown")) ok = false;
    if (!ok) return false;
    provider = group = system = nullptr;
    basePitch = rate = 1.0f;
    // Keep dlopen references until process exit: these libraries belong to the
    // game and may have live objects while our module is inactive.
    return true;
}

void forgetDestroyedProvider() {
    // FMOD.close/nativeDestroy may run before the Activity notifies us. All
    // provider, group, system and DSP handles are already invalid at that point.
    // Never dereference them or call shutdown/release/dlclose from this path.
    provider = group = system = nullptr;
    dsps[0] = {};
    dsps[1] = {};
    api = {};
    basePitch = rate = 1.0f;
    clearError();
}

int getPosition(int index) {
    clearError();
    void *sound, *channel;
    if (!slot(index, sound, channel)) return -1;
    unsigned value = 0;
    if (!check(api.channelPosition(channel, &value, kMilliseconds), "BGM position")) return -1;
    if (value > static_cast<unsigned>(std::numeric_limits<int>::max())) { fail("BGM position overflow"); return -1; }
    return static_cast<int>(value);
}

int getDuration(int index) {
    clearError();
    void *sound, *channel;
    if (!slot(index, sound, channel)) return -1;
    unsigned value = 0;
    if (!check(api.soundLength(sound, &value, kMilliseconds), "BGM duration")) return -1;
    if (value > static_cast<unsigned>(std::numeric_limits<int>::max())) { fail("BGM duration overflow"); return -1; }
    return static_cast<int>(value);
}

bool seek(int milliseconds, int index) {
    clearError();
    if (milliseconds < 0) return fail("negative BGM seek");
    int length = getDuration(index);
    if (length < 0) return false;
    if (milliseconds >= length) return fail("BGM seek must precede track end");
    // This original void method also shifts scheduled song-effect delays. It
    // cannot resurrect effects stopped by previous seeks: the game must reload
    // or re-schedule song effects when rebuilding a chart for backward seeks.
    api.providerSeek(provider, milliseconds, index);
    int observed = getPosition(index);
    if (observed < 0) return false;
    // FMOD position can advance if caller ignores the paused-only contract.
    if (std::abs(observed - milliseconds) > 100) return fail("FMOD seek was not confirmed");
    if (!check(api.systemLock(system), "lock FMOD mixer after seek")) return false;
    bool ok = true;
    for (auto& dsp : dsps)
        if (dsp.value && !check(api.dspReset(dsp.value), "flush pitch-shift history after seek")) ok = false;
    if (!check(api.systemUnlock(system), "unlock FMOD mixer after seek")) ok = false;
    return ok;
}

float getRate() { return rate; }
bool isInitialized() { return provider != nullptr; }
const char* lastError() { return error; }
int lastFmodError() { return fmodError; }
#ifdef PRACTICE_AUDIO_TEST
void setSymbolResolverForTests(SymbolResolver value) { resolver = value; }
#endif
}
