param(
    [string]$SdkRoot = 'C:\Program Files (x86)\Android\android-sdk',
    [string]$NdkRoot = 'C:\Program Files (x86)\Android\AndroidNDK\android-ndk-r23c'
)
$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path -Parent $PSScriptRoot
Push-Location $projectRoot
try {
    & (Join-Path $PSScriptRoot 'build.ps1') -SdkRoot $SdkRoot -NdkRoot $NdkRoot
    foreach ($script in @('prepare_offline_assets.py', 'prepare_offline_manifest.py', 'prepare_offline_native.py', 'prepare_offline_layouts.py')) {
        & python (Join-Path $PSScriptRoot $script)
        if ($LASTEXITCODE -ne 0) { throw "Offline preparation failed: $script" }
    }
    & (Join-Path $PSScriptRoot 'sign-apk.ps1') -SdkRoot $SdkRoot -Offline
    & python tools/verify_package.py --offline
    if ($LASTEXITCODE -ne 0) { throw 'Final offline package verification failed' }
    $aapt = Join-Path $SdkRoot 'build-tools/34.0.0/aapt.exe'
    $permissions = & $aapt dump permissions arcaea-offline-practice-arm64-fix1.apk
    if ($LASTEXITCODE -ne 0) { throw 'Final manifest could not be parsed by Android build tools' }
    if ($permissions -match "name='android.permission.INTERNET'") { throw 'Offline APK still requests Internet access' }
    Write-Output 'Offline APK checked: manifest parses and Internet permission is absent.'
} finally { Pop-Location }
