
local cmd = vim.cmd

-- Set colorscheme


require("config.options")
require("config.lazy")

-- require("mason").setup()

require("config.lsp_config")


require("tokyonight").setup({
    transparent = true,
    styles = {
        sidebars = "transparent",
        floats = "transparent",
    },
})


cmd([[colorscheme tokyonight-night]])

-- Plugin options
require('lualine').setup {}

require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
    },
}




local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

local language_servers = require("lspconfig").util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
for _, ls in ipairs(language_servers) do
    require('lspconfig')[ls].setup({
        capabilities = capabilities
        -- you can add other fields for setting up lsp server in this table
    })
end
--
-- local actions = require("telescope.actions")
--
-- require("telescope").setup({
--     defaults = {
--         mappings = {
--             i = {
--                 ["qq"] = actions.close,
--             },
--         },
--     },
-- })

require('ufo').setup()
require("config.keymaps")
require("config.color")
