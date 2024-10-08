return {

    {
      "hrsh7th/nvim-cmp",
      version = false, -- last release is way too old
      event = "InsertEnter",
      dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
	},
      -- Not all LSP servers add brackets when completing a function.
      -- To better deal with this, LazyVim adds a custom option to cmp,
      -- that you can configure. For example:
      --
      -- ```lua
      -- opts = {
      --   auto_brackets = { "python" }
      -- }
      -- ```
      opts = function()
        vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })
        local cmp = require("cmp")
        local defaults = require("cmp.config.default")()
        local auto_select = true
        return {
          auto_brackets = {}, -- configure any filetype to auto add brackets
          completion = {
            completeopt = "menu,menuone,noinsert" .. (auto_select and "" or ",noselect"),
          },
          preselect = auto_select and cmp.PreselectMode.Item or cmp.PreselectMode.None,
          mapping = cmp.mapping.preset.insert({
            -- ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            -- ["<C-j>"] = cmp.mapping.scroll_docs(4),

            ["<C-G>"] = cmp.mapping.confirm({ select = auto_select }),
            ["<C-CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.

	    ["<CR>"] = cmp.mapping.abort(),
	    ["<C-n>"] = cmp.mapping.select_next_item({behavior=cmp.SelectBehavior.Select}),
	    ["<C-p>"] = cmp.mapping.select_prev_item({behavior=cmp.SelectBehavior.Select}),
            ["<C-e>"] = function(fallback)
              cmp.abort()
              fallback()
            end,
          }),
          sources = cmp.config.sources({
            { name = "nvim_lsp" },
            -- { name = "path" },
          }, {
            { name = "buffer" },
          }),

          experimental = {
            ghost_text = {
              hl_group = "CmpGhostText",
            },
          },
          sorting = defaults.sorting,
        }
      end,
    },

}
