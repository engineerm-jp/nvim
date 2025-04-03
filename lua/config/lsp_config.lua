require("mason").setup(
    {
	ensure_installed = {
	    "black",
	}
    }
)

require("mason-lspconfig").setup({
	ensure_installed = {
		"pyright",
		"lua_ls",
		"matlab_ls",
		"jsonls",
		"yamlls",
		"texlab",
		"clangd",
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
require("lspconfig").texlab.setup({})
require("lspconfig").matlab_ls.setup({})
require("lspconfig").clangd.setup({})
