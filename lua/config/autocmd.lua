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

vim.api.nvim_create_autocmd("FileType", {
  pattern = "tex",
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
  end,
})
