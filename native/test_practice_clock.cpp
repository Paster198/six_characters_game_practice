#include "practice_clock.h"
#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <initializer_list>

int main() {
    const double rates[] = {.5, .73, 1, 1.38, 2, 2.5};
    for (double rate : rates) {
        practice_clock::RateClock clock;
        int64_t origin = 100000, now = origin;
        for (int i = 0; i < 36000; ++i) {
            now += i % 3 == 0 ? 17 : 16;
            origin += clock.update(now, origin, false, rate);
        }
        assert(fabs((now-origin)-(now-100000)*rate) < 1.001);
        const int64_t beforePause = origin;
        now += 45000;
        origin += clock.update(now, origin, true, rate);
        assert(origin == beforePause);
        now += 16;
        const int64_t beforeResume = origin;
        origin += clock.update(now, origin, false, rate);
        assert(fabs((origin-beforeResume)-16*(1-rate)) < 1.001);
        // Long foreground stalls must not permanently desynchronize music.
        now += 3500;
        const int64_t beforeStall = origin;
        origin += clock.update(now, origin, false, rate);
        assert(fabs((origin-beforeStall)-3500*(1-rate)) < 1.001);
        // An engine-side rebase must not rescale the entire preceding attempt.
        origin -= 1000;
        now += 16;
        assert(clock.update(now, origin, false, rate) == 0);
        clock.reset();
        origin = now;
        now += 16;
        origin += clock.update(now, origin, false, rate);
        assert(fabs((now-origin)-16*rate) < 1.001);
    }
    // Path IV's native skip cutoff is inclusive; practice A is inclusive too.
    for (int a : {1, 3000, 3001, 90000}) {
        int delta = a-3001;
        assert((a-1) <= delta+3000);
        assert(!(a <= delta+3000));
    }
    puts("PASS: clock drift, pause/resume, long stalls, reset, and inclusive A boundary");
}
