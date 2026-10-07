$ErrorActionPreference = 'Stop'
$checks = @()
function Add-Check($Name, $Ok, $Detail) {
  $script:checks += [pscustomobject]@{ Check=$Name; Status=$(if($Ok){'PASS'}else{'FAIL'}); Detail=$Detail }
}
function Get-CmdVersion($Command, $Args) {
  try { return (& $Command $Args 2>&1 | Select-Object -First 1).ToString() } catch { return $null }
}
$node = Get-CmdVersion 'node' '--version'
$npm = Get-CmdVersion 'npm' '--version'
$docker = Get-CmdVersion 'docker' '--version'
$git = Get-CmdVersion 'git' '--version'
Add-Check 'Node.js' ($null -ne $node) $node
Add-Check 'npm' ($null -ne $npm) $npm
Add-Check 'Git' ($null -ne $git) $git
Add-Check 'Docker' ($null -ne $docker) $(if($docker){$docker}else{'Required for full local stack; install or document exception.'})
$checks | Format-Table -AutoSize
if ($checks.Status -contains 'FAIL') { exit 1 }
Write-Host "Local prerequisites passed. Complete the target-tenant capability assessment manually." -ForegroundColor Green
