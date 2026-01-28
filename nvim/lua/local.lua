vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        local home = os.getenv("HCHTR_HOME")
        if home then
            vim.cmd("cd " .. home)
        end
    end,
})
