param(
    [string]$SdkRoot = 'C:\Program Files (x86)\Android\android-sdk',
    [string]$NdkRoot = 'C:\Program Files (x86)\Android\AndroidNDK\android-ndk-r23c'
)
$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path -Parent $PSScriptRoot
Push-Location $projectRoot
try {
    & (Join-Path $PSScriptRoot 'build.ps1') -SdkRoot $SdkRoot -NdkRoot $NdkRoot
    foreach ($script in @('prepare_full_assets.py', 'prepare_offline_manifest.py', 'prepare_offline_layouts.py', 'prepare_full_native.py')) {
        & python (Join-Path $PSScriptRoot $script)
        if ($LASTEXITCODE -ne 0) { throw "Full offline preparation failed: $script" }
    }
    foreach ($check in @('verify_path_i.py', 'verify_path_iii.py')) {
        & python "inspection/modifiers/$check" build/full-offline/lib/arm64-v8a/libcocos2dcpp.so
        if ($LASTEXITCODE -ne 0) { throw "Full offline modifier verification failed: $check" }
    }
    & python inspection/regression2/native-verify.py build/full-offline/lib/arm64-v8a/libcocos2dcpp.so
    if ($LASTEXITCODE -ne 0) { throw 'Offline difficulty/start regression verification failed' }
    & python inspection/regression3/native-verify.py build/full-offline/lib/arm64-v8a/libcocos2dcpp.so
    if ($LASTEXITCODE -ne 0) { throw 'Offline download-state regression verification failed' }
    & python inspection/regression4/ui-login-unlock-evidence.py
    if ($LASTEXITCODE -ne 0) { throw 'Offline Start login callback verification failed' }
    & python inspection/regression4/native-start-verify.py build/full-offline/lib/arm64-v8a/libcocos2dcpp.so
    if ($LASTEXITCODE -ne 0) { throw 'Offline Start resource and callback verification failed' }
    & (Join-Path $PSScriptRoot 'sign-apk.ps1') -SdkRoot $SdkRoot -Full
    & python tools/verify_full_package.py
    if ($LASTEXITCODE -ne 0) { throw 'Full offline APK verification failed' }
    & python inspection/regression4/path-verify.py build/full-offline/lib/arm64-v8a/libcocos2dcpp.so --apk arcaea-full-offline-practice-arm64-fix4.apk
    if ($LASTEXITCODE -ne 0) { throw 'Bundled BYD/Inscribed chart path verification failed' }
    & python inspection/regression4/compare-fix3.py
    if ($LASTEXITCODE -ne 0) { throw 'Unexpected changes from fix3 APK' }
    $aapt = Join-Path $SdkRoot 'build-tools/34.0.0/aapt.exe'
    $permissions = & $aapt dump permissions arcaea-full-offline-practice-arm64-fix4.apk
    if ($LASTEXITCODE -ne 0) { throw 'Final Android manifest parse failed' }
    if ($permissions -match "name='android.permission.INTERNET'") { throw 'Unexpected Internet permission' }
    Write-Output 'Full offline practice APK compiled, signed, aligned and verified.'
} finally { Pop-Location }
