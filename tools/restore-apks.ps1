param(
    [Parameter(Mandatory=$true)][string]$AssetDirectory,
    [string]$Destination = '.'
)
$ErrorActionPreference = 'Stop'
$assetRoot = (Resolve-Path -LiteralPath $AssetDirectory).Path
$destRoot = [IO.Path]::GetFullPath($Destination)
$manifest = Get-Content -Raw -LiteralPath (Join-Path $assetRoot 'apk-manifest.json') | ConvertFrom-Json
foreach ($entry in $manifest.files) {
    $target = [IO.Path]::GetFullPath((Join-Path $destRoot $entry.path))
    if (!$target.StartsWith($destRoot.TrimEnd('\','/') + [IO.Path]::DirectorySeparatorChar, [StringComparison]::OrdinalIgnoreCase)) { throw 'Unsafe destination path in manifest' }
    if (Test-Path -LiteralPath $target) {
        if ((Get-FileHash -LiteralPath $target -Algorithm SHA256).Hash -ne $entry.sha256) { throw "Existing file differs: $target" }
        Write-Host "Already verified: $($entry.path)"
        continue
    }
    foreach ($part in $entry.parts) {
        if ([IO.Path]::GetFileName($part.name) -ne $part.name) { throw 'Unsafe asset name' }
        $source = Join-Path $assetRoot $part.name
        if ((Get-Item -LiteralPath $source).Length -ne $part.size -or (Get-FileHash -LiteralPath $source -Algorithm SHA256).Hash -ne $part.sha256) { throw "Invalid part: $($part.name)" }
    }
    [IO.Directory]::CreateDirectory([IO.Path]::GetDirectoryName($target)) | Out-Null
    $partial = $target + '.restoring'
    $output = [IO.File]::Open($partial, [IO.FileMode]::CreateNew)
    try {
        foreach ($part in $entry.parts) {
            $inputStream = [IO.File]::OpenRead((Join-Path $assetRoot $part.name))
            try { $inputStream.CopyTo($output) } finally { $inputStream.Dispose() }
        }
    } finally { $output.Dispose() }
    if ((Get-FileHash -LiteralPath $partial -Algorithm SHA256).Hash -ne $entry.sha256) { throw "Restored checksum mismatch: $partial" }
    Move-Item -LiteralPath $partial -Destination $target
    Write-Host "Restored and verified: $($entry.path)"
}
