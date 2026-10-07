param(
  [Parameter(Mandatory=$true)][string]$ProjectName,
  [Parameter(Mandatory=$true)][string]$WorkspaceName,
  [string]$Destination = (Get-Location).Path
)
$ErrorActionPreference = 'Stop'
$target = Join-Path $Destination $ProjectName
if (Test-Path $target) { throw "Target already exists: $target" }
Write-Host 'Invoking the official Rayfin scaffold...'
npm create '@microsoft/rayfin@latest' -- $ProjectName --workspace $WorkspaceName
if (!(Test-Path $target)) { throw "Scaffold did not create $target" }
$repoRoot = Split-Path $PSScriptRoot -Parent
$overlay = Join-Path $repoRoot 'scaffolding/overlay'
if (Test-Path $overlay) { Copy-Item "$overlay/*" $target -Recurse -Force }
Copy-Item (Join-Path $repoRoot 'accelerator') $target -Recurse -Force
Copy-Item (Join-Path $repoRoot 'templates') $target -Recurse -Force
Copy-Item (Join-Path $repoRoot '.github') $target -Recurse -Force
Write-Host "Created $target. Pin and record the generated Rayfin version before implementation." -ForegroundColor Green
