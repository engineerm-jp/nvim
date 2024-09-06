vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "


local lazy_config = require "configs.lazy"
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

if not vim.loop.fs_stat(lazypath) then
    local repo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system {
        "git", "clone",
        "--filter=blob:none",
        repo,
        "--branch=stable",
        lazypath,
    }
end

    -- load plugins
    require("lazy").setup({
      {
        "NvChad/NvChad",
        lazy = false,
        branch = "v2.5",
        import = "nvchad.plugins",
        config = function()
          require "options"
        end,
      },

      { import = "plugins" },

    }, lazy_config)

    dofile(vim.g.base46_cache .. "defaults")
    dofile(vim.g.base46_cache .. "statusline")

    require "nvchad.autocmds"

    vim.schedule(function()
      require "mappings"
    end)

    -- vim.cmd([[set timeoutlen=500]])
    -- require("custom.window-separator")
    require("custom.tex")
    -- require("custom.markdown")
    -- require('custom.color-scheme')
    -- require('custom.fold')
    -- vim.cmd([[set cmdheight=2]])

    require('telescope').setup{
        -- extensions = {
        --     bibtex = {
        --         global_files = {"D:\\OneDrive - The University of Auckland\\Uni\\PhD\\Documents\\Research\\Literature Review\\References\\ref.bib"}
        --     },
        -- },
        defaults = {
            layout_strategy = "vertical",
            layout_config = {
                prompt_position = "top",
                vertical = {
                    sorting_strategy = "ascending",
                    height = function(_, _, max_lines) return max_lines end,
                    width = 120,
                    preview_cutoff = 0,
                    preview_height = 30,
                    mirror = true,
                },
            },
        },
    }

    require('custom.custom-colour')
    require("custom.cmp")

