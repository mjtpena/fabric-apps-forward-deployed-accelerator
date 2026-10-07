param([string]$ProjectPath='.')
$ErrorActionPreference = 'Stop'
Push-Location $ProjectPath
try {
  if (Test-Path 'rayfin/.env') { throw 'rayfin/.env must not be committed or included in evidence.' }
  if (!(Test-Path 'accelerator/compatibility.yml')) { throw 'Missing accelerator compatibility metadata.' }
  npm ci
  npm run build --if-present
  npm run lint --if-present
  npm test --if-present
  $tracked = git ls-files
  if ($tracked -contains 'rayfin/.env') { throw 'rayfin/.env is tracked by Git.' }
  Write-Host 'Project validation passed.' -ForegroundColor Green
} finally { Pop-Location }
