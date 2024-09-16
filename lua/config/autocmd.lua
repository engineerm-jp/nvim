local augroup = vim.api.nvim_create_augroup('LaTexSettings', {clear = true})

vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
    pattern = { '*.tex' },
    group = augroup,
    callback = function()
        vim.cmd([[
            setfiletype tex
            setlocal wrap
            setlocal breakindent
            ]])
    end,
})

vim.api.nvim_create_autocmd({'FileType'}, {
    pattern = { "tex", "bib" },
    group = augroup,
    callback = function()
        vim.cmd([[
            setlocal wrap
            setlocal breakindent
            ]])
    end,
})
