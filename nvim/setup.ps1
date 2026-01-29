#
$REPO_NVIM_PATH = Join-Path $env:HCHTR_HOME "repos\env\nvim"
#
$NVIM_PATH = Join-Path $env:LOCALAPPDATA "nvim"
#
if (-Not (Test-Path $NVIM_PATH)) {
    New-Item -ItemType Directory -Path $NVIM_PATH
}
#
$TARGET_INIT = Join-Path $NVIM_PATH "init.lua"
Remove-Item $TARGET_INIT -Force -ErrorAction Ignore
New-Item -ItemType SymbolicLink -Path $TARGET_INIT -Target (Join-Path $REPO_NVIM_PATH "init.lua")
#
$TARGET_LUA = Join-Path $NVIM_PATH "lua"
Remove-Item $TARGET_LUA -Recurse -Force -ErrorAction Ignore
New-Item -ItemType SymbolicLink -Path $TARGET_LUA -Target (Join-Path $REPO_NVIM_PATH "lua")
#
