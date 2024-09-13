return {

    {
      "folke/tokyonight.nvim",
      lazy = false, -- make sure we load this during startup if it is your main colorscheme
      priority = 1000, -- make sure to load this before all the other start plugins
      config = function()
        -- load the colorscheme here
        vim.cmd([[colorscheme tokyonight]])
      end,
    },

    {
      "williamboman/mason.nvim"
    },
  
    { "folke/which-key.nvim", lazy = false },
  

    { "nvim-tree/nvim-web-devicons", lazy = true },

   { 'nvim-telescope/telescope-fzf-native.nvim', build = 'gcc' },

    {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {
          defaults = {
          layout_strategy = "vertical",
          layout_config = {
              prompt_position = "top",
              vertical = {
                  height = function(_, _, max_lines) return max_lines end,
                  width = 120,
                  preview_cutoff = 0,
                  preview_height = 30,
                  mirror = true,
              },
          },
      },
    },
    extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    },

  }
    },

    -- Auto save
    {
      "Pocco81/auto-save.nvim",
      enabled = true,
      lazy = false,
    },

    {
      "nvim-tree/nvim-tree.lua",
      version = "*",
      lazy = false,
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
      config = function()
        require("nvim-tree").setup {}
      end,
    },
    {
	'kevinhwang91/nvim-ufo',
	dependencies = {'kevinhwang91/promise-async'}
    },
    {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },


    {
        "github/copilot.vim",
        lazy = true,
    },

    {
      "lewis6991/gitsigns.nvim",
      lazy = false,
      opts = {
	numhl = true,
    	current_line_blame = true,
    	current_line_blame_opts = {
        delay = 5000,
    	},
    },

   },

}
