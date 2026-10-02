#pragma once
#include <stdint.h>

namespace practice_clock {
// Accumulate fractional milliseconds instead of rounding every frame. Game time
// advances at rate while the engine retains its own pause accounting.
struct RateClock {
    bool ready = false;
    int64_t previousReal = 0;
    int64_t expectedOrigin = 0;
    double fraction = 0;

    void reset() { ready = false; fraction = 0; }
    int64_t update(int64_t now, int64_t origin, bool paused, double rate) {
        if (!ready || origin != expectedOrigin || now < previousReal) {
            // A new origin comes from the engine's start/reset operation. Include
            // the first elapsed interval, rather than losing one frame at 1x.
            previousReal = !ready && origin <= now && now-origin < 60000 ? origin : now;
            expectedOrigin = origin;
            fraction = 0;
            ready = true;
        }
        const int64_t elapsed = now - previousReal;
        int64_t shift = 0;
        if (!paused && elapsed >= 0) {
            fraction += elapsed * (1.0-rate);
            shift = static_cast<int64_t>(fraction);
            fraction -= shift;
        }
        expectedOrigin = origin + shift;
        previousReal = now;
        return shift;
    }
};
}
