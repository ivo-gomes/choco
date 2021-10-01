<#
  This PowerShell 7.0 script installs and upgrades a given list of packages thought Chocolatey package manager.
#>

param (
  [Parameter(Mandatory = $false, Position = 0)]
  [switch]
  $installPackageManager,

  [Parameter(Mandatory = $false, Position = 0)]
  [switch]
  $install,

  [Parameter(Mandatory = $false, Position = 0)]
  [switch]
  $upgrade,

  [Parameter(Mandatory = $false, Position = 1)]
  [string]
  [ValidateNotNullOrEmpty()]
  $packages
)

#Requires -RunAsAdministrator

Set-Variable scriptUrl -Option Constant -Value "https://chocolatey.org/install.ps1"

if ($install) {
  $packages = Get-Content $packages | Select-String -Pattern "^[\w\d\-]+$" | Join-String -Separator " "
  "choco install -y {0}" -f $packages | Invoke-Expression
}
elseif ($upgrade) {
  Invoke-Expression "choco upgrade all -y"
}
elseif ($installPackageManager) {
  Invoke-WebRequest $scriptUrl -UseBasicParsing | Invoke-Expression
}