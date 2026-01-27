#
$REPO_GIT_CFG = "$env:HCHTR_HOME\repos\env\git\.gitconfig"
$GIT_CFG = "$env:USERPROFILE\.gitconfig"
Remove-Item $GIT_CFG -Force -ErrorAction Ignore
New-Item -ItemType SymbolicLink -Path $GIT_CFG -Target $REPO_GIT_CFG
#
