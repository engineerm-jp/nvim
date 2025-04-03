local cmd = vim.cmd

require("config.options")
require("config.lazy")
require("config.lsp_config")


-- Set colorscheme
require("tokyonight").setup({
    transparent = true,
    styles = {
        sidebars = "transparent",
        floats = "transparent",
    },
})

cmd([[colorscheme tokyonight-night]])


-- Plugin options

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
require("config.lualine_config")
require("bufferline").setup{}
require("config.color")
require("config.autocmd")
require("plugins.indent")
require("noice").setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
  notify = {
      enabled = false,
  }
})


local telescope_actions = require('telescope.actions')


require("telescope").setup({
    -- file_sorter = require("telescope.sorters" ).get_fzy_sorter,
    pickers = {
	current_buffer_fuzzy_find = { sorting_strategy = 'ascending' },
    },

    defaults = {
	-- file_ignore_patterns = {'^./.git/'},
	mappings = {
	    n = {
		['<leader>jk'] = telescope_actions.close
	    }
	},

	path_display = {
	    "filename_first",
	    reverse_directories = false,
	},
    }
})

-- require('telescope').load_extension('fzf')

local Terminal  = require('toggleterm.terminal').Terminal

-- local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
--
-- function _lazygit_toggle()
--   lazygit:toggle()
-- end
--
-- vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
