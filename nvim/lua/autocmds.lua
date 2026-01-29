-- 
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        if os.getenv("HCHTR_HOME") then
            vim.cmd("cd " .. os.getenv("HCHTR_HOME"))
        end
    end,
})
--
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("Vex")
  end,
})
--
vim.api.nvim_create_autocmd({"BufReadPost", "BufNewFile"}, {
    pattern = { "*.c", "*.h" },
    callback = function()
        if vim.fn.executable("clangd") == 1 then
            vim.lsp.buf_attach_client(0, vim.lsp.start_client({
                name = "clangd",
                cmd = { "clangd" },
                root_dir = vim.loop.cwd(),
                filetypes = { "c" },
            }))
            vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"
        end
    end,
})
--
