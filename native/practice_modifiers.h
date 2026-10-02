#pragma once
#include <stdint.h>

// Pinned to the inspected 7.0.255c ARM64 engine. All APIs run on the game
// thread; the chart scope itself is thread local and never changes GameMode,
// the ChallengeManager, or the cached Song.
namespace practice_modifiers {
// Installs a verified absolute call-site adapter inside native LogicChart
// construction. Failure leaves the original instruction intact. Idempotent.
bool initialize(uintptr_t imageBase);
const char* lastError();

// Enclose exactly one original LogicChart::init call. The native Path III
// branches then construct new logic notes from the fresh parsed AFF input.
// A false scope restores ordinary construction even inside a true scope.
// Call initialize successfully before constructing a true scope in the APK.
class ChartScope {
public:
    explicit ChartScope(bool skyGround);
    ~ChartScope();
    ChartScope(const ChartScope&) = delete;
    ChartScope& operator=(const ChartScope&) = delete;
private:
    bool previous_;
};

// Call once, only when enabled, after original GameScene::init succeeds.
// Sets the existing Path I renderer flags, including ArcTap children. The
// native render updates provide the fade curve, including while paused.
// Disable by rebuilding a fresh scene and not calling this function; existing
// partner ability flags must not be cleared on a previously built scene.
bool applyHidden(void* scene, uintptr_t imageBase);

#if defined(PRACTICE_MODIFIERS_TEST)
namespace testing {
int selectedMode(int originalMode);
void makeJump(void* output, uintptr_t destination);
void makeModeThunk(void* output, uintptr_t imageBase, uintptr_t helper);
}
#endif
}
