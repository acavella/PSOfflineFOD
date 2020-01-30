$VerbosePreference = 'Continue'
$ErrorActionPreference = 'Stop'
$baseDir = $PSScriptRoot

try {
    $buildDir = "$baseDir\build\psgallery\PSOfflineFOD"
    $null = New-Item -Path $buildDir -ItemType Directory -Verbose

    Write-Verbose "Copying release files to build folder '$buildDir'"
    Copy-Item $baseDir\PSOfflineFOD.psd1    $buildDir\
    Copy-Item $baseDir\PSOfflineFOD.psm1    $buildDir\

    Write-Verbose 'Copy complete. Contents:'
    Get-ChildItem $buildDir -Recurse | Out-Host
}
catch {
    Write-Error -ErrorRecord $_
    exit 1
}