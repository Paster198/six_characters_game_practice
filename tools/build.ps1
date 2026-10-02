param(
    [string]$SdkRoot = 'C:\Program Files (x86)\Android\android-sdk',
    [string]$NdkRoot = 'C:\Program Files (x86)\Android\AndroidNDK\android-ndk-r23c'
)
$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path -Parent $PSScriptRoot
Push-Location $projectRoot
try {
    & python tools/verify_adapter.py
    if ($LASTEXITCODE -ne 0) { throw 'Native adapter verification failed' }
    & python inspection/modifiers/verify_path_i.py
    if ($LASTEXITCODE -ne 0) { throw 'Path I renderer verification failed' }
    & python inspection/modifiers/verify_path_iii.py
    if ($LASTEXITCODE -ne 0) { throw 'Path III chart conversion verification failed' }
    New-Item -ItemType Directory -Force build,build/java-classes,build/dex-bridge | Out-Null
    $clang = Join-Path $NdkRoot 'toolchains/llvm/prebuilt/windows-x86_64/bin/clang++.exe'
    & $clang --target=aarch64-linux-android24 -std=c++17 -Wall -Wextra -Werror -O2 -fPIC -shared -fno-exceptions -fno-rtti -nostdlib++ native/practice_bridge.cpp native/practice_audio.cpp native/practice_scene.cpp native/practice_modifiers.cpp -o build/libpractice.so -ldl -llog -lm '-Wl,--no-undefined' '-Wl,-z,max-page-size=16384' '-Wl,-z,common-page-size=16384'
    if ($LASTEXITCODE -ne 0) { throw 'Native compilation failed' }
    $androidJar = Join-Path $SdkRoot 'platforms/android-34/android.jar'
    & javac -source 8 -target 8 -encoding UTF-8 -classpath $androidJar -d build/java-classes java/low/moe/practice/Practice.java
    if ($LASTEXITCODE -ne 0) { throw 'Java compilation failed' }
    & jar cf build/practice-java.jar -C build/java-classes .
    if ($LASTEXITCODE -ne 0) { throw 'Java archive failed' }
    $d8 = Join-Path $SdkRoot 'build-tools/34.0.0/lib/d8.jar'
    & java -cp $d8 com.android.tools.r8.D8 --min-api 24 --lib $androidJar --output build/dex-bridge build/practice-java.jar
    if ($LASTEXITCODE -ne 0) { throw 'D8 compilation failed' }
    & (Join-Path $PSScriptRoot 'patch-dex.ps1') -SdkRoot $SdkRoot
    if ($LASTEXITCODE -ne 0) { throw 'DEX patch failed' }
    Write-Output 'Compiled and verified native library, Java bridge, and patched classes2.dex.'
} finally { Pop-Location }
