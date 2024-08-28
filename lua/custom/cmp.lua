-- local lsp = require('lsp-zero')
-- lsp.preset('system-lsp')  -- or recommended, or whatever...
-- lsp.setup_nvim_cmp({
--     preselect = 'none',
--     completion = {
--         completeopt = 'menu,menuone,noinsert,noselect'
--     },
-- })
-- lsp.setup()
local cmp = require"cmp"

cmp.setup({
    -- mapping = cmp.mapping.preset.insert({
    --     ['<CR>'] = cmp.mapping.confirm({ select = false }),
    -- })
    mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.close(),
        ["<C-o>"] = cmp.mapping.confirm ({select=true}),
    },
})
