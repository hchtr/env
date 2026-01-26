#
$REPO_VIM_RC = "$env:HCHTR_HOME\repos\env\vim\_vimrc"
$VIM_RC = "$env:USERPROFILE\_vimrc"
Remove-Item $VIM_RC -Force -ErrorAction Ignore
New-Item -ItemType SymbolicLink -Path $VIM_RC -Target $REPO_VIM_RC
#
