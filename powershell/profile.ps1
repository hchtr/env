#
Clear-Host
#
if (Test-Path "$env:HCHTR_HOME") {
  Set-Location -Path "$env:HCHTR_HOME"
} else {
  Write-Host "HCHTR_HOME not set or directory missing." -ForegroundColor Red
}
#
