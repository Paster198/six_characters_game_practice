#include <jni.h>
#include <android/log.h>
#include <dlfcn.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stdint.h>
#include <string.h>
#include <math.h>
#include <pthread.h>
#include "practice_audio.h"
#include "practice_scene.h"
#include "practice_clock.h"
#include "practice_preview.h"
#include "practice_modifiers.h"
#include "verified_hooks.h"

// This adapter is deliberately pinned to the inspected 7.0.255c arm64 binary.
// Every executable patch is checked against its original prologue before use.
namespace {
uintptr_t base;
bool initialized, unsupported, active, rebuilding, pauseAfterBuild;
void* scene;
void* song;
void* timeline;
void* taintedScene;
uint8_t originalNoFail;
int startMs, endMs, ratePercent = 100, durationMs, message;
bool repeat, fixedNotes = true, restartRequested;
bool hiddenNotes, skyGroundNotes;
bool chartConversionReady, modifierFailed;
practice_clock::RateClock rateClock;
pthread_mutex_t commandMutex = PTHREAD_MUTEX_INITIALIZER;
practice_preview::Mailbox pending;
int snapshot[15]{};
int editorId, closedEditorId, closingEditorId, savedPosition, previewTarget = -1;
bool editorTouched, exactBuild, awaitingInit;
int exactTarget;
int completionMessage;
int64_t buildStartedAt;
practice_preview::Settings savedSettings;

template<class T> T& field(void* p, size_t o) { return *reinterpret_cast<T*>(reinterpret_cast<uintptr_t>(p) + o); }
template<class F> F engine(size_t offset) { return reinterpret_cast<F>(base + offset); }
using Init = bool(*)(void*);
using Clock = void(*)(void*);
using Offset = void(*)(void*, int, int);
using Finish = void(*)(void*, bool);
Init originalInit;
Clock originalClock;
Offset originalOffset;
Finish originalFinish;
Finish originalRetry;
Offset originalTimeOffset;
using ChartInit = bool(*)(void*, void*, void*, void*, bool, int, void*, bool, int, float);
ChartInit originalChartInit;
Clock originalFinalize;
void* initializingScene;
bool skipOnly;
bool audioBlocked, cleanupPending;
int cleanupFrames;

void logError(const char* error) { __android_log_print(ANDROID_LOG_ERROR, "ArcaeaPractice", "%s", error); }
void failBuild(int error) {
    audioBlocked = true; message = error; completionMessage = 0;
    closingEditorId = 0;
    if (editorId) {
        pthread_mutex_lock(&commandMutex); pending.reopen(editorId); pthread_mutex_unlock(&commandMutex);
    }
}
void* currentScene() {
    void* director = *reinterpret_cast<void**>(base + 0x1bec058);
    if (!director) return nullptr;
    void* current = field<void*>(director, 0x140);
    return current && field<uintptr_t>(current, 0) == base + 0x1b262e8 ? current : nullptr;
}
void* provider() {
    void* app = *reinterpret_cast<void**>(base + 0x1be7028);
    if (!app) return nullptr;
    void* audio = field<void*>(app, 0x10);
    return audio ? field<void*>(audio, 0x2c0) : nullptr;
}
bool eligible(void* current) {
    if (!current || field<int>(current, 0x310) != 0 || field<void*>(current, 0x308)) return false;
    void* app = *reinterpret_cast<void**>(base + 0x1be7028);
    void* challenge = app ? field<void*>(app, 0xe0) : nullptr;
    return challenge && field<int>(challenge, 0x38) == 0;
}
void setPaused(void* p, bool value) {
    engine<void(*)(void*, bool, bool)>(0x9d3508)(p, value, true);
}
int modelTime(void* p) {
    void* model = p ? field<void*>(p, 0x3e0) : nullptr;
    return model ? engine<int(*)(void*)>(0xd2f348)(model) : 0;
}
void resetClock() { timeline = nullptr; rateClock.reset(); }

void showPauseOverlay(void* p, bool visible) {
    // GameScene::pause -> GameUI::showPause (0x7b6f94): GameUI+0x300 is
    // the existing pause root. Hide only that visual, preserving native pause.
    void* ui = p ? field<void*>(p, 0x3c0) : nullptr;
    void* root = ui ? field<void*>(ui, 0x300) : nullptr;
    if (root) {
        auto setVisible = reinterpret_cast<void(*)(void*, bool)>(field<uintptr_t>(field<void*>(root, 0), 0x150));
        setVisible(root, visible);
    }
}

bool pinPausedPosition(void* p, int target) {
    setPaused(p, true);
    void* model = field<void*>(p, 0x3e0);
    void* clock = model ? field<void*>(model, 0x30) : nullptr;
    if (!clock || !field<uint8_t>(p, 0x4b0) || !field<uint8_t>(model, 0x138) || !field<uint8_t>(clock, 0x2c)) return false;
    auto position = practice_preview::pin(target, field<int>(clock, 0x34),
        field<uint8_t>(clock, 0x2d), field<int>(clock, 0x20));
    field<int>(clock, 0x24) = position.base;
    field<int>(clock, 0x28) = position.elapsed;
    // Refresh the native BGM seek while remaining paused, including chart
    // offset handling. It does not mark notes or change the requested offset.
    originalTimeOffset(clock, 0, 1);
    return modelTime(p) == target;
}

void clockHook(void* self) {
    if (active && self == timeline && field<uint8_t>(self, 0x2d)) {
        int64_t now = engine<int64_t(*)()>(0xc9cc78)();
        int64_t origin = field<int64_t>(self, 0x10);
        int64_t shift = rateClock.update(now, origin, field<uint8_t>(self, 0x2c), ratePercent / 100.0);
        field<int64_t>(self, 0x10) += shift;
        field<int64_t>(self, 0x18) += shift;
    }
    originalClock(self);
}

void offsetHook(void* model, int delta, int mode) {
    // Move the timeline without consuming the note exactly at A. The separate
    // skipOnly marking pass below uses A-1 as its inclusive native cutoff.
    if (active && initializingScene && mode == 2) mode = 1;
    originalOffset(model, delta, mode);
}

void timeOffsetHook(void* self, int delta, int mode) {
    if (!skipOnly) originalTimeOffset(self, delta, mode);
}

void retryHook(void* self, bool preservePosition) {
    if (active && self == scene) {
        rebuilding = true;
        pauseAfterBuild = false; awaitingInit = true; exactBuild = false;
        completionMessage = 0;
        buildStartedAt = engine<int64_t(*)()>(0xc9cc78)();
        preservePosition = false;
    }
    originalRetry(self, preservePosition);
}

bool chartInitHook(void* self, void* songData, void* timingData, void* chartData,
                   bool mirror, int modifier, void* options, bool extra, int mode, float speed) {
    if (active && initializingScene && fixedNotes) speed /= ratePercent / 100.f;
    // Scope only native construction of new LogicNotes. The source Song/AFF,
    // scene modifier pointer and global challenge mode remain untouched.
    practice_modifiers::ChartScope scope(active && initializingScene && skyGroundNotes && chartConversionReady);
    return originalChartInit(self, songData, timingData, chartData, mirror, modifier,
                             options, extra, mode, speed);
}

void finalizeHook(void* self) {
    if ((active && self == scene) || self == taintedScene) return;
    originalFinalize(self);
}

bool initHook(void* self) {
    const bool belongs = active && field<void*>(self, 0x318) == song;
    if (belongs) {
        initializingScene = self;
        modifierFailed = false; chartConversionReady = false;
        if (skyGroundNotes) {
            chartConversionReady = practice_modifiers::initialize(base);
            if (!chartConversionReady) { modifierFailed = true; logError(practice_modifiers::lastError()); }
        }
        resetClock();
        field<uint8_t>(self, 0x34d) = 1; // Verified no-fail branch in GameModel::update.
        field<int>(self, 0x4b4) = exactBuild ? practice_preview::initialOffset(exactTarget) :
            (startMs > 3000 ? startMs - 3000 : 0);
    }
    bool ok = originalInit(self);
    initializingScene = nullptr;
    if (belongs && ok) {
        scene = self;
        awaitingInit = false;
        void* model = field<void*>(self, 0x3e0);
        timeline = field<void*>(model, 0x30);
        const int cutoff = exactBuild ? (closingEditorId && startMs > exactTarget ? startMs : exactTarget) : startMs;
        if (cutoff > 0) {
            // Native mode 2 marks <= delta+3000, so A-3001 preserves notes at A.
            // Reuse its marking pass without moving the already prepared timeline.
            skipOnly = true;
            originalOffset(model, cutoff - 3001, 2);
            skipOnly = false;
        }
        // Pause in init, before enter/visit can advance time or start music.
        // onEnterTransitionDidFinish starts the clock but retains its paused
        // flag and saved base; the next paused update stays at this target.
        bool positioned = true;
        if (exactBuild) positioned = pinPausedPosition(self, exactTarget);
        else if (pauseAfterBuild) setPaused(self, true);
        practice_scene::restoreSceneControls(model, exactBuild ? exactTarget : modelTime(self), base);
        // Fresh renderers retain the game's native baseline when disabled.
        // In particular, do not clear a partner's pre-existing hidden effect.
        if (hiddenNotes && !practice_modifiers::applyHidden(self, base)) {
            modifierFailed = true; logError(practice_modifiers::lastError());
        }
        // init/retry may reset the sound group's pitch; reapply it before play.
        if (modifierFailed || !positioned) {
            failBuild(modifierFailed ? 7 : 5); pauseAfterBuild = true; setPaused(self, true);
            if (!positioned) logError("Cannot hold the requested chart preview position");
        } else if (!practice_audio::initialize(provider()) || !practice_audio::setRate(ratePercent / 100.f)) {
            failBuild(4); pauseAfterBuild = true; setPaused(self, true);
            logError(practice_audio::lastError());
        } else audioBlocked = false;
        if (editorId && !closingEditorId) showPauseOverlay(self, false);
    } else if (belongs) {
        failBuild(5); rebuilding = awaitingInit = false;
    }
    // End initializes a normal replacement before Director retires the old
    // practice scene. Keep its score/replay guard through exit and cleanup.
    if (!belongs && ok && !rebuilding) taintedScene = nullptr;
    return ok;
}

void finishHook(void* self, bool cleared) {
    if (self == taintedScene) { setPaused(self, true); return; }
    if (active && self == scene) {
        // Stop before the original function writes finished flags or saves results.
        setPaused(self, true);
        if (editorId) return; // Previewing B/the song end must not start a loop.
        message = 2;
        if (repeat) restartRequested = true;
        return;
    }
    originalFinish(self, cleared);
}

struct Hook { uintptr_t address; unsigned char saved[16]; void* trampoline; } hooks[8]{};
void branch(unsigned char* out, uintptr_t target) {
    const uint32_t code[2] = {0x58000051, 0xd61f0220}; // ldr x17, +8; br x17
    memcpy(out, code, 8); memcpy(out + 8, &target, 8);
}
bool protect(void* location, int protection) {
    const size_t page = static_cast<size_t>(sysconf(_SC_PAGESIZE));
    uintptr_t p = reinterpret_cast<uintptr_t>(location);
    uintptr_t low = p & ~(page - 1), high = (p + 16 + page - 1) & ~(page - 1);
    return mprotect(reinterpret_cast<void*>(low), high - low, protection) == 0;
}
bool hook(int i, uintptr_t offset, const unsigned char* expected, void* replacement, void** original) {
    unsigned char* location = reinterpret_cast<unsigned char*>(base + offset);
    if (memcmp(location, expected, 16)) return false;
    // Only non-PC-relative stack prologues are copied; verified_hooks.h is generated
    // from the input ELF and checked by tools/verify_adapter.py.
    void* trampoline = mmap(nullptr, 4096, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (trampoline == MAP_FAILED) return false;
    memcpy(trampoline, location, 16);
    branch(static_cast<unsigned char*>(trampoline) + 16, base + offset + 16);
    __builtin___clear_cache(static_cast<char*>(trampoline), static_cast<char*>(trampoline) + 32);
    if (mprotect(trampoline, 4096, PROT_READ | PROT_EXEC) || !protect(location, PROT_READ | PROT_WRITE | PROT_EXEC)) {
        munmap(trampoline, 4096); return false;
    }
    hooks[i] = {base + offset, {}, trampoline};
    memcpy(hooks[i].saved, location, 16);
    *original = trampoline;
    branch(location, reinterpret_cast<uintptr_t>(replacement));
    __builtin___clear_cache(reinterpret_cast<char*>(location), reinterpret_cast<char*>(location) + 16);
    protect(location, PROT_READ | PROT_EXEC);
    return true;
}
void undoHooks() {
    for (Hook& h : hooks) if (h.address) {
        void* location = reinterpret_cast<void*>(h.address);
        if (protect(location, PROT_READ | PROT_WRITE | PROT_EXEC)) {
            memcpy(location, h.saved, 16);
            __builtin___clear_cache(static_cast<char*>(location), static_cast<char*>(location) + 16);
            protect(location, PROT_READ | PROT_EXEC);
        }
        // Keep trampolines mapped if a restore ever fails, so original calls stay valid.
    }
}
bool initialize() {
    void* game = dlopen("libcocos2dcpp.so", RTLD_NOW | RTLD_NOLOAD);
    if (!game) return false;
    Dl_info info{};
    void* render = dlsym(game, "Java_org_cocos2dx_lib_Cocos2dxRenderer_nativeRender");
    if (!render || !dladdr(render, &info)) { dlclose(game); return false; }
    base = reinterpret_cast<uintptr_t>(info.dli_fbase);
    if (reinterpret_cast<uintptr_t>(render) - base != 0x11fc164 ||
        memcmp(reinterpret_cast<void*>(base + 0x2e0), kBuildId, sizeof(kBuildId))) {
        unsupported = true; dlclose(game); return false;
    }
    bool ok = hook(0, 0xeb2494, kInit, reinterpret_cast<void*>(initHook), reinterpret_cast<void**>(&originalInit)) &&
              hook(1, 0xccbe74, kClock, reinterpret_cast<void*>(clockHook), reinterpret_cast<void**>(&originalClock)) &&
              hook(2, 0x9ce624, kOffset, reinterpret_cast<void*>(offsetHook), reinterpret_cast<void**>(&originalOffset)) &&
              hook(3, 0x11940cc, kFinish, reinterpret_cast<void*>(finishHook), reinterpret_cast<void**>(&originalFinish)) &&
              hook(4, 0x19768d4, kTimeOffset, reinterpret_cast<void*>(timeOffsetHook), reinterpret_cast<void**>(&originalTimeOffset)) &&
              hook(5, 0x1a3bd48, kRetry, reinterpret_cast<void*>(retryHook), reinterpret_cast<void**>(&originalRetry)) &&
              hook(6, 0x13d2b10, kChartInit, reinterpret_cast<void*>(chartInitHook), reinterpret_cast<void**>(&originalChartInit)) &&
              hook(7, 0xae9374, kFinalize, reinterpret_cast<void*>(finalizeHook), reinterpret_cast<void**>(&originalFinalize));
    if (!ok) { undoHooks(); unsupported = true; logError("Binary hook verification failed; practice disabled"); }
    initialized = ok;
    dlclose(game);
    return ok;
}
bool replaceImmediately(void* self, bool pause) {
    void* director = *reinterpret_cast<void**>(base + 0x1bec058);
    void* app = *reinterpret_cast<void**>(base + 0x1be7028);
    void* audio = app ? field<void*>(app, 0x10) : nullptr;
    // Never replace another pending transition, or bypass a special mode's
    // constructor. This runs only at the GL-frame boundary for normal play.
    if (!eligible(self) || !director || field<void*>(director, 0x140) != self ||
        field<void*>(director, 0x148) || !audio) return false;
    const practice_preview::SceneSeed seed(self);
    void* next = engine<void*(*)(size_t)>(0x1a5b370)(0x4e0);
    if (!next) return false;
    // Same 14 arguments as retry(false), including the six stack arguments.
    // The constructor autoreleases the new scene; Director retains it when
    // queued. The ordinary constructor must run; copying scene memory would
    // reuse consumed notes and apply Path III repeatedly to transformed data.
    using Construct = void(*)(void*, void*, int, int, int, bool, int, void*, int, int, void*, bool, bool, int);
    engine<Construct>(0x7eafb0)(next, seed.song, seed.difficulty, seed.chartMode,
        seed.playMode, seed.flag, seed.noteSpeed, nullptr, seed.option,
        seed.partnerOption, nullptr, false, seed.extra, seed.stamina);
    seed.restoreParameters(next);
    *reinterpret_cast<uint8_t*>(base + 0x1bd7944) = 1; // Native retry bookkeeping.
    // TransitionShutter's load callback (0x1551280) stops old audio before
    // initializing the incoming scene. Do that work synchronously, without
    // constructing its shutter sprites, playing its sound or scheduling any
    // transition. Director performs normal exit/cleanup/enter exactly once.
    engine<void(*)(void*)>(0x11efb28)(audio);
    taintedScene = self;
    if (!initHook(next)) {
        // The constructor's autorelease owns the failed scene. Keep the old
        // paused scene/editor available; another request can rebuild safely.
        scene = self;
        resetClock();
        void* model = field<void*>(self, 0x3e0);
        timeline = model ? field<void*>(model, 0x30) : nullptr;
        return false;
    }
    if (pause) setPaused(next, true);
    if (editorId && !closingEditorId) showPauseOverlay(next, false);
    engine<void(*)(void*, void*)>(0xfed4b0)(director, next);
    return field<void*>(director, 0x148) == next;
}
void rebuild(void* self, bool pause, bool exact = false, int target = 0) {
    rebuilding = true; pauseAfterBuild = pause; restartRequested = false;
    awaitingInit = active; exactBuild = exact; exactTarget = target;
    buildStartedAt = engine<int64_t(*)()>(0xc9cc78)();
    resetClock();
    // A/B, effect switches, Apply, Cancel and loops use a direct scene swap.
    // The original pause-menu Retry still keeps its ordinary transition.
    if (!replaceImmediately(self, pause)) {
        failBuild(5); rebuilding = awaitingInit = exactBuild = false;
        scene = self; setPaused(self, true);
        if (editorId) showPauseOverlay(self, false);
    }
}
void forgetSession(bool audioAlive) {
    if (audioAlive && practice_audio::isInitialized() && !practice_audio::shutdown()) {
        cleanupPending = true; cleanupFrames = 0; message = 4;
        logError(practice_audio::lastError());
    }
    active = rebuilding = restartRequested = awaitingInit = exactBuild = false;
    audioBlocked = false;
    scene = song = taintedScene = nullptr; resetClock();
    startMs = endMs = 0; ratePercent = 100;
    hiddenNotes = skyGroundNotes = false;
    chartConversionReady = modifierFailed = false;
}
void acknowledgeEditor(void* current) {
    if (current) showPauseOverlay(current, true);
    closedEditorId = closingEditorId ? closingEditorId : editorId;
    editorId = closingEditorId = 0;
    editorTouched = false; previewTarget = -1;
}
void rejectEditor() {
    pthread_mutex_lock(&commandMutex);
    pending.reopen(editorId);
    pthread_mutex_unlock(&commandMutex);
}
void beginEditor(void* current, int id) {
    editorId = id; editorTouched = false; previewTarget = -1;
    savedPosition = modelTime(current);
    savedSettings = {active ? startMs : 0, active ? endMs : durationMs,
        active ? ratePercent : 100, active && repeat, !active || fixedNotes,
        active && hiddenNotes, active && skyGroundNotes};
    showPauseOverlay(current, false);
}
void activate(void* current) {
    if (!active) originalNoFail = field<uint8_t>(current, 0x34d);
    active = true; song = field<void*>(current, 0x318); scene = current;
    field<uint8_t>(current, 0x34d) = 1;
}
void beforeFrame() {
    if (unsupported || (!initialized && !initialize())) return;
    if (cleanupPending && ++cleanupFrames >= 60) {
        cleanupFrames = 0;
        if (practice_audio::shutdown()) cleanupPending = false;
    }
    void* current = currentScene();
    // Complete the preceding rebuild before taking any queued request. In
    // particular a Cancel/Apply received during retry must survive transitions.
    if (rebuilding) {
        if (engine<int64_t(*)()>(0xc9cc78)() - buildStartedAt > 15000) {
            // A failed native retry must not trap the editor behind a permanent
            // loading state. Leave the available scene paused and allow retry.
            failBuild(5); rebuilding = awaitingInit = exactBuild = false;
            if (eligible(current)) { scene = current; setPaused(current, true); }
        }
    }
    if (rebuilding) {
        if (active) {
            if (awaitingInit || current != scene) return;
        } else {
            if (!current || current == scene) return;
            scene = current;
        }
        if (pauseAfterBuild) {
            setPaused(current, true);
            if (!field<uint8_t>(current, 0x4b0)) return;
        }
        rebuilding = false; exactBuild = false;
        // The replacement is now Director's running scene, so old exit and
        // cleanup have finished, including the End (active == false) case.
        taintedScene = nullptr;
        if (completionMessage) { message = completionMessage; completionMessage = 0; }
        if (closingEditorId) acknowledgeEditor(current);
    }
    if (active && (!current || field<void*>(current, 0x318) != song)) {
        if (editorId) acknowledgeEditor(nullptr);
        forgetSession(true);
    }
    const bool ready = eligible(current) && field<uint8_t>(current, 0x4b0);
    practice_preview::Request c;
    pthread_mutex_lock(&commandMutex);
    c = pending.take(ready);
    // A scene change invalidates the UI transaction, not a transient retry.
    if (!ready && !current) pending.clear();
    pthread_mutex_unlock(&commandMutex);
    if (c.begin && ready) beginEditor(current, c.id);
    if (ready && c.id == editorId && editorId) {
        using namespace practice_preview;
        if (c.action == Apply && !cleanupPending) {
            if (!practice_audio::initialize(provider())) { message = 4; rejectEditor(); return; }
            const int length = practice_audio::getDuration();
            const auto& s = c.settings;
            if (s.a < 0 || s.b - s.a < 1000 || s.b > length || s.rate < 50 || s.rate > 250) {
                message = 5; rejectEditor(); return;
            }
            if (!practice_audio::setRate(s.rate / 100.f)) {
                message = 4; logError(practice_audio::lastError()); rejectEditor(); return;
            }
            activate(current); audioBlocked = false; editorTouched = true;
            startMs = s.a; endMs = s.b; ratePercent = s.rate; repeat = s.loop; fixedNotes = s.fixed;
            hiddenNotes = s.hidden; skyGroundNotes = s.skyGround;
            durationMs = length; completionMessage = 1; closingEditorId = editorId;
            showPauseOverlay(current, true);
            rebuild(current, true);
            return;
        } else if (c.action == End && active) {
            if (!practice_audio::shutdown()) { message = 4; rejectEditor(); return; }
            field<uint8_t>(current, 0x34d) = originalNoFail;
            taintedScene = current; active = false; resetClock(); completionMessage = 3;
            hiddenNotes = skyGroundNotes = false;
            closingEditorId = editorId; showPauseOverlay(current, true);
            rebuild(current, true);
            return;
        } else if (c.action == Cancel || c.action == End) {
            if (!editorTouched || !active) { acknowledgeEditor(current); return; }
            // Native retry discards judged-note state. Restore position/settings
            // but retain practice status so this run can never save a score.
            if (!practice_audio::initialize(provider()) || !practice_audio::setRate(savedSettings.rate / 100.f)) {
                // A persistent audio error must still let the user reach the
                // original paused menu and return to song selection.
                audioBlocked = true; message = 6; acknowledgeEditor(current); return;
            }
            startMs = savedSettings.a; endMs = savedSettings.b; ratePercent = savedSettings.rate;
            repeat = savedSettings.loop; fixedNotes = savedSettings.fixed;
            hiddenNotes = savedSettings.hidden; skyGroundNotes = savedSettings.skyGround;
            closingEditorId = editorId; showPauseOverlay(current, true);
            rebuild(current, true, true, savedPosition);
            return;
        } else if (c.preview && !cleanupPending &&
                   c.target >= (savedPosition < -3000 ? savedPosition : -3000) && c.target <= durationMs) {
            if (editorTouched && !audioBlocked && previewTarget == c.target &&
                hiddenNotes == c.settings.hidden && skyGroundNotes == c.settings.skyGround) return;
            if (!practice_audio::initialize(provider()) || !practice_audio::setRate(ratePercent / 100.f)) {
                message = 4; return;
            }
            if (!active) {
                startMs = 0; endMs = durationMs; ratePercent = 100; repeat = false; fixedNotes = true;
            }
            hiddenNotes = c.settings.hidden; skyGroundNotes = c.settings.skyGround;
            activate(current); editorTouched = true; audioBlocked = false; previewTarget = c.target;
            rebuild(current, true, true, c.target);
            return;
        } else if (c.action == Apply) { message = 4; rejectEditor(); }
    }
    if (!active || !current || current != scene) return;
    if (audioBlocked || editorId) {
        setPaused(current, true);
        if (editorId && !closingEditorId) showPauseOverlay(current, false);
        return;
    }
    if (restartRequested) { rebuild(current, false); return; }
    if (!field<uint8_t>(current, 0x4b0) && modelTime(current) >= endMs) {
        setPaused(current, true);
        message = 2;
        if (repeat) rebuild(current, false);
    }
}
void updateSnapshot() {
    memset(snapshot, 0, sizeof(snapshot));
    if (!initialized || unsupported) { snapshot[0] = -1; return; }
    void* current = currentScene();
    snapshot[0] = rebuilding ? 3 : eligible(current) ? (field<uint8_t>(current, 0x4b0) ? 2 : 1) : 0;
    // Query only during game/pause; the provider owns menu music too.
    if (current) {
        if (!practice_audio::isInitialized()) practice_audio::initialize(provider());
        int length = practice_audio::getDuration();
        if (length > 0) durationMs = length;
        snapshot[2] = modelTime(current);
    }
    snapshot[1] = durationMs; snapshot[3] = startMs; snapshot[4] = endMs;
    snapshot[5] = ratePercent; snapshot[6] = repeat; snapshot[7] = fixedNotes;
    snapshot[8] = active; snapshot[9] = message;
    snapshot[10] = editorId; snapshot[11] = closedEditorId; snapshot[12] = previewTarget;
    snapshot[13] = hiddenNotes; snapshot[14] = skyGroundNotes;
    message = 0;
}
}

extern "C" JNIEXPORT void JNICALL Java_low_moe_practice_Practice_nativeBeforeFrame(JNIEnv*, jclass) { beforeFrame(); }
extern "C" JNIEXPORT jintArray JNICALL Java_low_moe_practice_Practice_nativeState(JNIEnv* env, jclass) {
    updateSnapshot();
    jintArray out = env->NewIntArray(15);
    if (out) env->SetIntArrayRegion(out, 0, 15, snapshot);
    return out;
}
extern "C" JNIEXPORT void JNICALL Java_low_moe_practice_Practice_nativeBegin(JNIEnv*, jclass, jint id) {
    pthread_mutex_lock(&commandMutex); pending.begin(id); pthread_mutex_unlock(&commandMutex);
}
extern "C" JNIEXPORT void JNICALL Java_low_moe_practice_Practice_nativePreview(JNIEnv*, jclass, jint id, jint target, jboolean hidden, jboolean skyGround) {
    pthread_mutex_lock(&commandMutex); pending.preview(id, target, !!hidden, !!skyGround); pthread_mutex_unlock(&commandMutex);
}
extern "C" JNIEXPORT void JNICALL Java_low_moe_practice_Practice_nativeApply(JNIEnv*, jclass, jint id, jint a, jint b, jint rate, jboolean loop, jboolean fixed, jboolean hidden, jboolean skyGround) {
    pthread_mutex_lock(&commandMutex);
    pending.finish(id, practice_preview::Apply, {a, b, rate, !!loop, !!fixed, !!hidden, !!skyGround});
    pthread_mutex_unlock(&commandMutex);
}
extern "C" JNIEXPORT void JNICALL Java_low_moe_practice_Practice_nativeEnd(JNIEnv*, jclass, jint id) {
    pthread_mutex_lock(&commandMutex); pending.finish(id, practice_preview::End); pthread_mutex_unlock(&commandMutex);
}
extern "C" JNIEXPORT void JNICALL Java_low_moe_practice_Practice_nativeCancel(JNIEnv*, jclass, jint id) {
    pthread_mutex_lock(&commandMutex); pending.finish(id, practice_preview::Cancel); pthread_mutex_unlock(&commandMutex);
}
extern "C" JNIEXPORT void JNICALL Java_low_moe_practice_Practice_nativeDestroyed(JNIEnv*, jclass) {
    practice_audio::forgetDestroyedProvider();
    cleanupPending = false; audioBlocked = false;
    forgetSession(false);
    editorId = closingEditorId = closedEditorId = 0; editorTouched = false; previewTarget = -1;
    pthread_mutex_lock(&commandMutex); pending.clear(); pthread_mutex_unlock(&commandMutex);
}
