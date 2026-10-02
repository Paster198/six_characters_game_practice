# Note Speed and practice rate compensation (arm64-v8a)

All addresses below are virtual offsets relative to libcocos2dcpp.so's load base, for this APK only.

## Preferred exact-float implementation

Hook LogicChart virtual init at `0x13d2b10`, and divide its incoming float `s0` by the practice playback rate only while the practice GameScene is being initialized. This makes the native constructor rebuild all baked timing/note caches with exact float compensation.

Verified raw forwarding ABI:

```cpp
using ChartInit = bool(*)(void* self, void* arg1, void* arg2, void* arg3,
                         bool arg4, int arg5, void* stringReference,
                         bool arg7, int stackArg0, float noteSpeed);
```

Caller `0xf198b8..0xf198e8` supplies `x0..x7`, stores the last integer at `[sp]`, and puts note speed in `s0`. Callee reduces SP by `0x1b0`, makes x29=SP+0x150, and reads that stack integer at `[x29+0x60]` (the original caller SP). The bool result is in w0. Argument semantic names are intentionally omitted where not independently proven; the primitive ABI is verified.

The first 16 bytes (`ffc306d1e8a300fdfd7b15a9fc6f16a9`) are four relocation-free stack operations and support the existing 16-byte trampoline scheme. `tools/verify_adapter.py` verifies these bytes, the caller signature fingerprint, callee stack handling, and the LogicChart vtable init slot.

## Integer override fallback

Temporarily override `GameScene + 0x4bc` before calling the original GameScene::init at `0xeb2494`, and restore it immediately after initialization. This is the per-scene **integer note-speed override, in tenths**. A zero value means use the user's global highspeed setting. A nonzero value bypasses the global range clamp.

For fixed visual note speed with playback rate `r`, use:

```cpp
int oldOverride = readInt(scene + 0x4bc);
int baseTenths = oldOverride != 0 ? oldOverride : getClampedHighspeed();
writeInt(scene + 0x4bc, max(1, int(lround(baseTenths / r))));
originalGameSceneInit(scene);
writeInt(scene + 0x4bc, oldOverride);
```

`getClampedHighspeed()` is a no-argument int function at `0x154617c`, reading global config and clamping to 10..65. A prior live chart's `+0xf0` float is another source of the effective starting note speed, but retaining an original snapshot is required to avoid dividing repeatedly on retries.

This method allows native code to rebuild timing/note caches consistently and avoids changing the user's persistent setting. Compensation has 0.1-note-speed precision. Example: base 5.0 at rate 2.0 gives override 25 -> chart speed 2.5. At rate 0.5 override 100 -> chart speed 10.0; the override branch does not apply the usual 6.5 cap.

Do **not** write GameScene +0x324/+0x328; these are PlayModifier values, unrelated to note speed.

## Confirmed call chain

1. GameScene constructor `0x7eafb0` saves input `w6` at scene `+0x4bc` (`0x7eb078`).
2. GameScene::init `0xeb2494` loads it into `w4` at `0xeb2b20`, then calls LogicChart loader/factory `0x134a8c8` at `0xeb2b28`.
3. Loader saves `w4` to `w22`. At `0x134a998`, `cbnz w22, 0x134a9d4` skips global preferences when override is nonzero.
4. The zero branch reads `[globalManager +0x70] +0xc`, the integer `highspeed_int`, and clamps to 10..65.
5. At `0x134a9e0` it converts `w22` to float and divides by 10, passing `s0` into factory `0xf197cc`.
6. LogicChart factory passes that exact float into virtual init `0x13d2b10`; its vtable is `0x1ad9820` and RTTI is `10LogicChart`.
7. GameScene saves the resulting LogicChart pointer at `scene +0x3e8`. GameModel also holds this chart at `model +0x28`.

## Why changing the chart float after initialization is insufficient

- LogicChart `+0xf0` float is the requested Note Speed.
- LogicChart `+0xf4` float is `NoteSpeed * 180 / baseBPM` (computed at `0x13d3424..0x13d3438`); special mode 2 can impose a minimum 2.5 at `0x13d3ac0`.
- LogicTimingEvent constructor/init `0x9c0bd8` stores effective BPM at `+0x18`, and reciprocal distance coefficient `60 / effectiveBPM` at `+0x28`.
- Native initialization integrates each timing group, saving note start/end Z at LogicNote `+0x38/+0x3c` and current Z at `+0x30/+0x34`, including nested ArcTap notes under arc `+0x120`.
- Therefore writing just chart `+0xf0/+0xf4` after play begins will not update notes already constructed. Use the original initialization path with the temporary per-scene override.

## Persistent setting (do not call for practice)

`0x12c3818` writes Config `+0xc` and persists `highspeed_int` through user preferences. This is not appropriate for temporary practice compensation.

Supporting disassembly: `notespeed-chartfactory.txt`, `notespeed-chartinit.txt`, plus the original `init.txt` and `gamescene_ctor.txt`.
