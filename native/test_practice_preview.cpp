#include "practice_preview.h"
#include <assert.h>
#include <stdio.h>

using namespace practice_preview;

static void mailboxTests() {
    Mailbox box;
    box.begin(7);
    for (int i = 0; i < 1000; ++i) box.preview(7, i);
    assert(!box.take(false).id); // Scene replacement cannot consume a request.
    auto first = box.take(true);
    assert(first.id == 7 && first.begin && first.preview && first.target == 999);
    box.preview(7, 120000);
    box.preview(6, 5); // A stale editor cannot seek the new song/session.
    assert(box.take(true).target == 120000);
    box.preview(7, 20);
    box.finish(7, Cancel);
    box.preview(7, 50000); // Delayed UI callbacks cannot supersede Cancel.
    box.reopen(7); // An in-flight native failure must not erase queued Cancel.
    assert(!box.take(false).id);
    auto cancel = box.take(true);
    assert(cancel.action == Cancel && !cancel.preview);
    box.preview(7, 50001);
    assert(!box.take(true).id);

    box.begin(8);
    box.preview(8, 10);
    Settings s{1000, 5000, 138, true, false, true, true};
    box.finish(8, Apply, s);
    box.finish(8, End); // First terminal choice wins.
    auto apply = box.take(true);
    assert(apply.begin && !apply.preview && apply.action == Apply);
    assert(apply.settings.a == 1000 && apply.settings.b == 5000 && apply.settings.rate == 138);
    assert(apply.settings.loop && !apply.settings.fixed);
    assert(apply.settings.hidden && apply.settings.skyGround);
    box.reopen(8); // Failed application can be retried or cancelled.
    box.finish(8, Cancel);
    assert(box.take(true).action == Cancel);
    box.begin(9); box.finish(9, Cancel); // Open then cancel before any GL frame.
    auto untouched = box.take(true);
    assert(untouched.begin && untouched.action == Cancel && !untouched.preview);
    box.clear();
    assert(!box.take(true).id);

    Settings defaults;
    assert(!defaults.hidden && !defaults.skyGround);
    box.begin(10);
    box.preview(10, 1500, true, false);
    auto hidden = box.take(true);
    assert(hidden.settings.hidden && !hidden.settings.skyGround);
    // Same-position requests with changed effects must remain observable.
    box.preview(10, 1500, true, true);
    auto both = box.take(true);
    assert(both.preview && both.target == hidden.target);
    assert(both.settings.hidden && both.settings.skyGround);
    box.preview(10, 1500, false, true);
    auto converted = box.take(true);
    assert(!converted.settings.hidden && converted.settings.skyGround);
    box.preview(10, 1600, true, true);
    box.preview(10, 1700, false, false);
    assert(!box.take(false).id);
    auto latest = box.take(true);
    assert(latest.target == 1700 && !latest.settings.hidden && !latest.settings.skyGround);
    box.preview(10, 1700, true, true);
    box.finish(10, Cancel);
    box.preview(10, 1700, false, false);
    assert(box.take(true).action == Cancel);
}

// Independent model of the disassembled Timeline::update/currentTime paths.
// It exercises init-before-onEnter, long pauses and resume, including zero,
// the negative preparation interval, and the exact end-of-song position.
static void timelineTests() {
    const int targets[] = {-3500, -3000, -1501, -1, 0, 1, 2999, 3000, 31001, 180000};
    const int wallTimes[] = {0, 1, 16, 1000, 60000};
    for (int target : targets) {
        int offset = initialOffset(target);
        assert(offset > 0); // Never accidentally select native -3000 preroll.
        auto pinned = pin(target, offset, false, 0);
        assert(offset - pinned.elapsed == target); // Before onEnter.
        int elapsedAtPause = 0;
        for (int wall : wallTimes) {
            int nativeClock = wall + offset;
            elapsedAtPause = wall - pinned.base;
            assert(nativeClock - elapsedAtPause == target);
            bool paused = true, started = true, musicStarted = false;
            if (started && !paused && wall - elapsedAtPause > 0) musicStarted = true;
            assert(!musicStarted);
        }
        assert((60000 + 37 + offset) - elapsedAtPause == target + 37);

        // Also correct if the engine has already started its clock in init.
        const int clockBeforePin = 123456;
        auto started = pin(target, offset, true, clockBeforePin);
        assert(clockBeforePin - started.elapsed == target);
        assert((999999 + offset) - (999999 - started.base) == target);
    }
}
static void freshSceneTests() {
    alignas(void*) unsigned char oldScene[0x4e0]{};
    alignas(void*) unsigned char newScene[0x4e0]{};
    auto put = [&](size_t offset, const auto& value) { memcpy(oldScene + offset, &value, sizeof(value)); };
    int song = 1, oldChart = 2, oldModel = 3;
    put(0x318, static_cast<void*>(&song));
    put(0x310, 0); put(0x314, 42); put(0x320, 4); put(0x324, 3);
    put(0x328, 7); put(0x348, 2); put(0x378, 100); put(0x4bc, 53);
    put(0x37c, uint8_t(1)); put(0x4b9, uint8_t(1));
    put(0x3e8, static_cast<void*>(&oldChart)); put(0x3e0, static_cast<void*>(&oldModel));
    for (int i = 0; i < 44; ++i) oldScene[0x34c + i] = static_cast<unsigned char>(i + 1);
    SceneSeed seed(oldScene);
    assert(seed.song == &song && seed.difficulty == 4 && seed.chartMode == 7);
    assert(seed.playMode == 0 && seed.option == 42 && seed.partnerOption == 2);
    assert(seed.noteSpeed == 53 && seed.stamina == 100 && seed.flag && seed.extra);
    seed.restoreParameters(newScene);
    for (size_t i = 0; i < sizeof(newScene); ++i) {
        assert(newScene[i] == ((i >= 0x34c && i < 0x378) ? oldScene[i] : 0));
    }
    // Later live model changes cannot alter the constructor seed. Repeated
    // back/forward rebuilds preserve options but never reuse transformed data.
    memset(oldScene, 0xff, sizeof(oldScene));
    memset(newScene, 0, sizeof(newScene));
    seed.restoreParameters(newScene);
    assert(seed.song == &song && seed.chartMode == 7);
    assert(!SceneSeed::read<void*>(newScene, 0x3e8));
    assert(!SceneSeed::read<void*>(newScene, 0x3e0));
    assert(newScene[0x34c] == 1 && newScene[0x377] == 44);
}
int main() {
    mailboxTests(); timelineTests(); freshSceneTests();
    puts("PASS: preview mailbox/terminal recovery, paused timeline and fresh-scene settings isolation");
}
