# 
[System.Environment]::SetEnvironmentVariable("HCHTR_HOME", "C:/HCHTR", "User")
#
$REPO_PROFILE = "$env:HCHTR_HOME\repos\env\powershell\profile.ps1"
New-Item -ItemType Directory -Force -Path (Split-Path $PROFILE) | Out-Null
Remove-Item $PROFILE -Force -ErrorAction Ignore
New-Item -ItemType SymbolicLink -Path $PROFILE -Target $REPO_PROFILE
#
