#
Clear-Host
#
if (Test-Path "$env:HCHTR_HOME") {
  Set-Location -Path "$env:HCHTR_HOME"
}
#
function ee { explorer . }
function hm { sl $env:HCHTR_HOME }
#
