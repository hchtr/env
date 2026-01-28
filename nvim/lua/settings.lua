local opt = vim.opt

vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")
opt.autoread = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.expandtab = true

opt.wildmenu = true

opt.number = true
opt.relativenumber = true

opt.termguicolors = true 

opt.hlsearch = true
opt.incsearch = true
opt.smartcase = true
