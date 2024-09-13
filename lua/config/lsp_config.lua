require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"pyright",
		"lua_ls",
		"matlab_ls",
		"jsonls",
		"yamlls",
	},
})

require("lspconfig").pyright.setup({})

require("lspconfig").lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
})

require("lspconfig").yamlls.setup({})
require("lspconfig").jsonls.setup({})
