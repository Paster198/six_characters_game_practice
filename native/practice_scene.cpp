#include "practice_scene.h"
#include <stddef.h>
#include <string.h>
#include <math.h>

namespace practice_scene {
namespace {
template<class T> T load(uintptr_t p, size_t offset = 0) {
    T result;
    memcpy(&result, reinterpret_cast<const void*>(p + offset), sizeof result);
    return result;
}
template<class T> void store(uintptr_t p, size_t offset, T value) {
    memcpy(reinterpret_cast<void*>(p + offset), &value, sizeof value);
}
bool pointer(uintptr_t p) { return p >= 0x10000 && !(p & 7); }
bool vectorRange(uintptr_t first, uintptr_t last, size_t maximum) {
    return first <= last && (first == last || pointer(first)) &&
        ((last - first) & 7) == 0 && (last - first) / 8 <= maximum;
}
float clamp(float value, float minimum, float maximum) {
    return value < minimum ? minimum : value > maximum ? maximum : value;
}
struct Control {
    bool found = false;
    int time = 0;
    int direction = 0;
    float duration = 1;
};
bool consider(uintptr_t note, uintptr_t base, int target, Control& camera,
              Control& lanes) {
    if (!pointer(note)) return false;
    if (load<uintptr_t>(note) != base + 0x1a7daf0) return true;
    int type = load<int>(note, 0x64);
    if (type != 5 && type != 6) return true;
    int time = load<int>(note, 0x18);
    float duration = load<float>(note, 0x68);
    if (time > target || !isfinite(duration) || duration < 0) return true;
    Control& chosen = type == 5 ? camera : lanes;
    if (!chosen.found || time >= chosen.time) {
        chosen.found = true;
        chosen.time = time;
        chosen.duration = duration;
        chosen.direction = load<int>(note, 0x6c);
    }
    return true;
}
// The loop mirrors libc++ tree successor traversal at 0x9cea70..0x9ceac4.
// Each group is a libc++ tree with begin at +0 and its end sentinel at +8.
bool inspectGroup(uintptr_t tree, uintptr_t base, int target,
                  Control& camera, Control& lanes, size_t& total) {
    if (!pointer(tree)) return false;
    uintptr_t node = load<uintptr_t>(tree);
    uintptr_t end = tree + 8;
    while (node != end) {
        if (!pointer(node) || ++total > 2000000) return false;
        uintptr_t first = load<uintptr_t>(node, 0x28);
        uintptr_t last = load<uintptr_t>(node, 0x30);
        if (!vectorRange(first, last, 2000000)) return false;
        for (uintptr_t it = first; it != last; it += 8) {
            if (++total > 2000000 || !consider(load<uintptr_t>(it), base,
                    target, camera, lanes)) return false;
        }
        uintptr_t right = load<uintptr_t>(node, 8);
        if (right) {
            do {
                if (!pointer(right) || ++total > 2000000) return false;
                node = right;
                right = load<uintptr_t>(node);
            } while (right);
        } else {
            uintptr_t parent = load<uintptr_t>(node, 0x10);
            if (!pointer(parent)) return false;
            while (load<uintptr_t>(parent) != node) {
                if (parent == end || ++total > 2000000) return false;
                node = parent;
                parent = load<uintptr_t>(node, 0x10);
                if (!pointer(parent)) return false;
            }
            node = parent;
        }
    }
    return true;
}
void apply(uintptr_t model, int target, const Control& control,
           size_t startOffset, bool camera) {
    // Defaults are copied exactly from GameModel factory 0x10a7d74:
    // rodata 0x416170 contains {INT_MIN/2, -1}; duration/value are 1.0f.
    int start = control.found ? control.time : -1073741824;
    int direction = control.found ? control.direction : -1;
    float duration = control.found ? control.duration : 1.0f;
    float value = camera ? 1.0f : 0.0f;
    if (control.found) {
        float t = duration > 0 ? float(int64_t(target) - start) / duration : 1.0f;
        if (camera) {
            value = clamp(direction >= 1 ? 1.0f + 0.5f*t : 1.5f - 0.5f*t,
                          1.0f, 1.5f);
        } else {
            value = clamp(direction >= 1 ? t : 1.0f-t, 0.0f, 1.0f);
        }
    }
    store(model, startOffset, start);
    store(model, startOffset+4, direction);
    store(model, startOffset+8, duration);
    store(model, startOffset+12, value);
    // Previous camera scale must agree with the restored scale, so the first
    // render does not interpolate from the pre-seek 4-lane camera position.
    if (camera) store(model, 0x64, value);
}
}

int restoreSceneControls(void* object, int targetMillis, uintptr_t imageBase) {
    static_assert(sizeof(uintptr_t) == 8, "This APK helper requires 64-bit ABI");
    static_assert(sizeof(int) == 4 && sizeof(float) == 4, "Unexpected ABI");
    uintptr_t model = reinterpret_cast<uintptr_t>(object);
    if (!pointer(model) || load<uintptr_t>(model) != imageBase + 0x1b7cd48)
        return -1;
    uintptr_t first = load<uintptr_t>(model, 0x88);
    uintptr_t last = load<uintptr_t>(model, 0x90);
    if (!vectorRange(first, last, 65536)) return -1;
    Control camera, lanes;
    size_t total = 0;
    for (uintptr_t it = first; it != last; it += 8) {
        if (!inspectGroup(load<uintptr_t>(it), imageBase, targetMillis,
                          camera, lanes, total)) return -1;
    }
    apply(model, targetMillis, camera, 0x54, true);
    apply(model, targetMillis, lanes, 0x68, false);
    return int(camera.found) + int(lanes.found);
}
}
