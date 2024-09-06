local M = {}

M.ui = {

  statusline = {
    -- more opts
    order = {...}, -- check stl/utils.lua file in ui repo 
    modules = {
      -- The default cursor module is override
      cursor = function()
        return "%#BruhHl#" .. " bruh " -- the highlight group here is BruhHl,
      end
    },

    -- Separator style and theme
    theme = "vscode_colored", -- default, vscode, vscode_colored or minimal
    -- default, round, block, and arrow are supported only by the default statusline theme.
    -- the round and block separators are also supported by the minimal theme.
    separator_style = "default", -- default, round, block or arrow
  }
}

return M
