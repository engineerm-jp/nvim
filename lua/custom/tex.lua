function latex_settings()
    vim.wo.wrap = true
    vim.wo.breakindent = true
end

vim.api.nvim_exec([[
    autocmd FileType tex lua latex_settings() 
]], false)
