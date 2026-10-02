param(
    [string]$InputDex = 'inspection/classes2.dex',
    [string]$OutputDex = 'build/classes2.dex',
    [string]$Bridge = 'Llow/moe/practice/Practice;',
    [string]$SdkRoot = 'C:\Program Files (x86)\Android\android-sdk'
)
$ErrorActionPreference = 'Stop'
$libRoot = Join-Path $SdkRoot 'cmdline-tools/11.0/lib/external'
$jarNames = @(
    'com/android/tools/smali/smali-baksmali/3.0.0/smali-baksmali-3.0.0.jar',
    'com/android/tools/smali/smali-dexlib2/3.0.0/smali-dexlib2-3.0.0.jar',
    'com/android/tools/smali/smali-util/3.0.0/smali-util-3.0.0.jar',
    'com/beust/jcommander/1.78/jcommander-1.78.jar',
    'com/google/guava/guava/31.1-jre/guava-31.1-jre.jar',
    'com/google/guava/failureaccess/1.0.1/failureaccess-1.0.1.jar'
)
$classPath = ($jarNames | ForEach-Object { Join-Path $libRoot $_ }) -join ';'
$toolBuild = Join-Path $PSScriptRoot '../build/dex-tools'
New-Item -ItemType Directory -Path $toolBuild -Force | Out-Null
& javac -cp $classPath -d $toolBuild (Join-Path $PSScriptRoot 'PatchDex.java')
if ($LASTEXITCODE -ne 0) { throw 'PatchDex compilation failed' }
& java -Xmx1g -cp "$toolBuild;$classPath" PatchDex $InputDex $OutputDex $Bridge
if ($LASTEXITCODE -ne 0) { throw 'Dex patch failed' }
