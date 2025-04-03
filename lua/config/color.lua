vim.api.nvim_set_hl(0, 'GitSignsCurrentLineBlame', {fg = "DarkRed"})
vim.api.nvim_set_hl(0, 'Comment', {fg = "#697d6e"})
vim.api.nvim_set_hl(0, '@comment', {link = "Comment"})
-- vim.api.nvim_set_hl(0, 'GitSignsChange', {fg = "DarkRed", bg="#280000"})
vim.api.nvim_set_hl(0, 'GitSignsChange', {fg = "DarkRed"})
-- vim.api.nvim_set_hl(0, 'GitSignsChangeLn', {bg="#031C00"})
vim.api.nvim_set_hl(0, "normal", {guibg=NONE})
vim.api.nvim_set_hl(0, "linenr", {fg = '#a0a8cd'})
vim.api.nvim_set_hl(0, "visual", {bg="#2e2e66"})

vim.api.nvim_set_hl(0, "Search", {bg = '#38a89d', fg = 'Black'})
vim.api.nvim_set_hl(0, "CurSearch", {bg = '#3c3c85', fg = reverse})

-- vim.api.nvim_set_hl(0, "TelescopeMatching", {guibg = 'Green', guifg = 'Red'})
-- vim.api.nvim_set_hl(0, "TelescopePreviewLine", {bg = "#414190", fg = reverse})

vim.api.nvim_set_hl(0, "FlashLabel", {bg = '#660101'})
vim.api.nvim_set_hl(0, "FlashMatch", {bg = '#0092a8', fg = 'Black'})
vim.api.nvim_set_hl(0, "FlashCurrent", {bg = '#0092a8', fg = 'Black'})

vim.api.nvim_set_hl(0, "Folded", {bg = NONE})
vim.api.nvim_set_hl(0, "UfoFoldedBg", {bg = NONE})
