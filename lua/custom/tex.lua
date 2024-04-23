-- custom settings for LaTex files
vim.api.nvim_exec([[
    autocmd FileType tex setlocal wrap | setlocal breakindent
]], false)


