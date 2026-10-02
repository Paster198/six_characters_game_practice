#pragma once
#include <stdint.h>
#include <string.h>

namespace practice_preview {
enum Action { None, Apply, End, Cancel };
struct Settings {
    int a = 0, b = 0, rate = 100;
    bool loop = false, fixed = true, hidden = false, skyGround = false;
};
struct Request {
    int id = 0;
    bool begin = false, preview = false;
    int target = 0;
    Action action = None;
    Settings settings{};
};

// Protected by the bridge's commandMutex. A terminal action wins over all
// delayed slider events, and nothing is consumed while a scene is rebuilding.
class Mailbox {
    Request request{};
public:
    void begin(int id) { if (id > 0) request = {id, true, false, 0, None, {}}; }
    void preview(int id, int target, bool hidden = false, bool skyGround = false) {
        if (request.id != id || request.action != None) return;
        request.preview = true; request.target = target;
        request.settings.hidden = hidden; request.settings.skyGround = skyGround;
    }
    void finish(int id, Action action, Settings settings = {}) {
        if (request.id != id || request.action != None) return;
        request.action = action; request.settings = settings; request.preview = false;
    }
    Request take(bool ready) {
        if (!ready) return {};
        Request result = request;
        request.begin = request.preview = false; request.action = None;
        // Keep an ended transaction sealed against delayed UI callbacks.
        if (result.action != None) request.id = 0;
        return result;
    }
    void reopen(int id) {
        // Do not discard a Cancel/Apply queued while native init was failing.
        if (!request.id) request = {id, false, false, 0, None, {}};
    }
    void clear() { request = {}; }
};

struct PausedPosition { int base, elapsed; };
// Timeline::pause saves (chart time - offset) at +0x24. Timeline::update
// recomputes +0x28 from that value while paused; currentTime reads +0x20-0x28
// after onEnter and (offset + preroll)-0x28 before onEnter.
inline PausedPosition pin(int target, int offset, bool started, int clockValue) {
    return {target - offset, (started ? clockValue : offset + (offset > 0 ? 0 : -3000)) - target};
}
inline int initialOffset(int target) { return target > 0 ? target : 1; }

// The settings copied by GameScene::retry(false), verified at
// 0x1a3be64..0x1a3bed0. No judged model, LogicChart, renderer or timeline
// pointer is copied: each replacement must parse the original AFF anew.
struct SceneSeed {
    void* song;
    int difficulty, chartMode, playMode, noteSpeed, option, partnerOption, stamina;
    bool flag, extra;
    unsigned char playParameters[44];
    template<class T> static T read(const void* p, size_t offset) {
        T result;
        memcpy(&result, static_cast<const unsigned char*>(p) + offset, sizeof(T));
        return result;
    }
    explicit SceneSeed(const void* p)
        : song(read<void*>(p, 0x318)), difficulty(read<int>(p, 0x320)),
          chartMode(read<int>(p, 0x328)), playMode(read<int>(p, 0x310)),
          noteSpeed(read<int>(p, 0x4bc)), option(read<int>(p, 0x314)),
          partnerOption(read<int>(p, 0x348)), stamina(read<int>(p, 0x378)),
          flag(read<uint8_t>(p, 0x37c) != 0), extra(read<uint8_t>(p, 0x4b9) != 0) {
        memcpy(playParameters, static_cast<const unsigned char*>(p) + 0x34c, sizeof(playParameters));
    }
    void restoreParameters(void* p) const {
        memcpy(static_cast<unsigned char*>(p) + 0x34c, playParameters, sizeof(playParameters));
    }
};
}
