param([string]$OutputPath='evidence/release')
$ErrorActionPreference = 'Stop'
New-Item -ItemType Directory -Force -Path $OutputPath | Out-Null
git rev-parse HEAD | Set-Content (Join-Path $OutputPath 'commit.txt')
git status --short | Set-Content (Join-Path $OutputPath 'working-tree.txt')
node --version | Set-Content (Join-Path $OutputPath 'node-version.txt')
npm --version | Set-Content (Join-Path $OutputPath 'npm-version.txt')
npm run build *>&1 | Tee-Object (Join-Path $OutputPath 'build.txt')
npm test --if-present *>&1 | Tee-Object (Join-Path $OutputPath 'tests.txt')
Write-Host "Evidence collected at $OutputPath" -ForegroundColor Green
