return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },



  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            texlab = {
                    keys = { "<Leader>K", "<plug>(vimtex-doc-package)", desc = "Vimtex Docs", silent = true},
                },
            marksman = {},
        },
    },

    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },



  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server",
        "stylua",
        -- "html-lsp",
        -- "css-lsp",
        "prettier",
        "black",
        "pyright",
        "markdownlink",
        "markdown-toc", 
        "matlab-language-server"
  		},
  	},
  },

  {
      "nvim-treesitter/nvim-treesitter",
      opts = function(_, opts)
        opts.ensure_installed = opts.ensure_installed or { "vim", "lua", "vimdoc", "bibtex"}
        -- vim.list_extend(opts.ensure_installed, { "bibtex" })

        opts.highlight = opts.highlight or {}
        if type(opts.highlight.disable) == "table" then
          vim.list_extend(opts.highlight.disable, { "latex" })
        else
          opts.highlight.disable = { "latex" }
        end
      end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim",
        "lua",
        "vimdoc",
        -- "html",
        -- "css"
  		},
  	},
  },


  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["python"] = { "black" },
      },
    },
  },


  -- {
  --   "github/copilot.vim",
  --   config = true,
  -- },

}
