[System.Environment]::SetEnvironmentVariable("HCHTR", "C:/hchtr", "User")

$repoProfile = "$env:HCHTR\repos\dotfiles-win\powershell\profile.ps1"

New-Item -ItemType Directory -Force -Path (Split-Path $PROFILE) | Out-Null

Remove-Item $PROFILE -Force -ErrorAction Ignore

New-Item -ItemType SymbolicLink -Path $PROFILE -Target $repoProfile
