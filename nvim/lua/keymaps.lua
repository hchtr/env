--
vim.api.nvim_set_keymap('i', '(', '()<Esc>i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '[', '[]<Esc>i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '{', '{}<Esc>i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '"', '""<Esc>i', { noremap = true, silent = true })
--
vim.api.nvim_set_keymap("i", "<Tab>", [[pumvisible() ? "\<C-n>" : "\<Tab>"]], {expr = true, noremap = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], {expr = true, noremap = true})
