
vim.api.nvim_set_hl(0, 'GitSignsCurrentLineBlame', {fg = "DarkRed"})
vim.api.nvim_set_hl(0, 'Comment', {fg = "#64BC00"})
-- vim.api.nvim_set_hl(0, 'GitSignsChange', {fg = "DarkRed", bg="#280000"})
vim.api.nvim_set_hl(0, 'GitSignsChange', {fg = "DarkRed"})
-- vim.api.nvim_set_hl(0, 'GitSignsChangeLn', {bg="#031C00"})
-- set background to none
vim.api.nvim_set_hl(0, "normal", {guibg=NONE})
vim.api.nvim_set_hl(0, "linenr", {fg = '#a0a8cd'})
vim.api.nvim_set_hl(0, "visual", {bg="#414190"})

vim.api.nvim_set_hl(0, "Search", {bg = '#38a89d', fg = 'Black'})
vim.api.nvim_set_hl(0, "CurSearch", {bg = '#474853', fg = reverse})
