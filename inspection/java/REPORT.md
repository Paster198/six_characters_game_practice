# Java / DEX inspection and hook patch

All relevant classes are in `classes2.dex`. Original disassembly is under `inspection/java/dex2/`.

## Lifecycle

- `low/moe/AppActivity.onCreate(Bundle)` first uses ReLinker to load `cocos2dcpp`, `fmod`, and `fmodProvider`, then calls `Cocos2dxActivity.onCreate(Bundle)`.
- `Cocos2dxActivity.init()` creates a `ResizeLayout` containing a `Cocos2dxEditText` and `Cocos2dxGLSurfaceView`, and calls `setContentView(mFrameLayout)`.
- A Java UI overlay can therefore be installed after the superclass `onCreate` returns, via `Activity.addContentView` or adding a child to the existing content view. UI writes must run on the main thread.
- `Cocos2dxActivity.runOnGLThread(Runnable)` delegates to `mGLSurfaceView.queueEvent`.
- `AppActivity.onResume()` calls superclass, restores immersive mode, then calls nativeResume. No special lifecycle patch is currently needed here.
- `AppActivity.onDestroy()` calls superclass, nativeDestroy, then `FMOD.close`. The added `Practice.destroy()` follows these calls and must only clear references/state, without calling the destroyed FMOD provider.

## Renderer

`Cocos2dxRenderer.onDrawFrame(GL10)` has two nativeRender paths: the normal <=16.67 ms interval path, and a throttled path that sleeps before nativeRender. Both run on the GL thread. Both are patched as:

```text
Practice.beforeFrame()
Cocos2dxRenderer.nativeRender()
Practice.afterFrame()
```

The renderer can start before the outer AppActivity finishes onCreate. Hook methods must tolerate `Practice.install(Activity)` not having run yet. Lazy native library loading in beforeFrame runs on the GL thread.

## Replayable patch

`tools/PatchDex.java` uses the SDK-bundled dexlib2. `tools/patch-dex.ps1` compiles and runs it. It defaults to `inspection/classes2.dex` -> `build/classes2.dex`; refuses in-place writing and repeat-patching an already hooked input. The bridge descriptor can be overridden; default is `Llow/moe/practice/Practice;`.

Expected Java bridge static signatures:

```java
public static void install(android.app.Activity activity);
public static void beforeFrame();
public static void afterFrame();
public static void destroy();
```

The patch uses existing registers, maintains labels/try blocks/debug positions through MutableMethodImplementation, checks expected call-site counts, writes a separate file, reloads it, and verifies hook counts. Output contains all 7,741 original classes. No original APK or DEX was changed.

Validation: patched classes were independently disassembled into `inspection/java/patched/`; install appears once after super.onCreate, beforeFrame and afterFrame appear twice each around nativeRender, and destroy appears once.

## Tool availability

SDK path: `C:\Program Files (x86)\Android\android-sdk`.

- `build-tools/34.0.0/d8.bat` and `platforms/android-34/android.jar` are available for compiling the new Java bridge into a separate classes3.dex.
- SDK includes baksmali/dexlib2/util 3.0.0, but no standalone smali assembler JAR was found.
- JCommander 1.78 is incompatible with baksmali's **help formatter only** (`NoSuchMethodError: getMainParameter`). Running `com.android.tools.smali.baksmali.Main disassemble ...` directly works with the six JAR classpath assembled in patch-dex.ps1.
- Selective re-disassembly works using `--classes 'Llow/moe/AppActivity;,Lorg/cocos2dx/lib/Cocos2dxRenderer;'`.
