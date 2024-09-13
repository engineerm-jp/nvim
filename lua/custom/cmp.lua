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
        ["<C-m>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        -- ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        -- ["<C-f>"] = cmp.mapping.scroll_docs(4),
        -- ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.close(),
        ["<C-g>"] = cmp.mapping.confirm ({select=true}),
    },
})
-- cmp.setup ({
--     mapping = {
--         ['<S-CR>'] = function(fallback)
--             if cmp.visible() then
--                 cmp.confirm()
--             else
--                 fallback() -- If you use vim-endwise, this fallback will behave the same as vim-endwise.
--             end
--         end,
--
--         ['<C-n>'] = function(fallback)
--
--             if cmp.visible() then
--                 cmp.select_next_item()
--             else
--                 fallback()
--             end
--         end,
--
--         ['<C-m>'] = function(fallback)
--
--             if cmp.visible() then
--                 cmp.select_prev_item()
--             else
--                 fallback()
--             end
--         end,
--
--         ['<CR>'] = function(fallback)
--
--             if cmp.visible() then
--                 cmp.mapping_confirm({select=false})
--             else
--                 fallback()
--             end
--         end,
--     },
-- })

