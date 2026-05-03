param(
    [string]$CodexHome = $(if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $HOME ".codex" })
)

$ErrorActionPreference = "Stop"

$RepoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$Source = Join-Path $RepoRoot "pets\bighead-girl"
$Destination = Join-Path $CodexHome "pets\bighead-girl"

if (-not (Test-Path -LiteralPath $Source)) {
    throw "Pet files were not found at: $Source"
}

New-Item -ItemType Directory -Force -Path $Destination | Out-Null
Copy-Item -LiteralPath (Join-Path $Source "pet.json") -Destination (Join-Path $Destination "pet.json") -Force
Copy-Item -LiteralPath (Join-Path $Source "spritesheet.webp") -Destination (Join-Path $Destination "spritesheet.webp") -Force

Write-Host "Installed Tangdouren pet to: $Destination"
Write-Host "Open Codex App settings and refresh custom pets from your local Codex home."
