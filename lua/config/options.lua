local opt = vim.opt
local g = vim.g
local fn = vim.fn

g.vscode = true

opt.autoindent = true
opt.ignorecase = true

-- TAB length
opt.shiftwidth = 4

opt.number = true
opt.relativenumber = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.wrap = false
opt.clipboard:append{'unnamedplus'}

-- Fold options
opt.foldcolumn = '1' -- '0' is not bad
opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
opt.foldlevelstart = 99
opt.foldenable = true

-- opt.termguicolors = true
-- opt.winblend = 0
-- vim.opt.pumblend = 0

-- Set PowerShell options
--
--
--
local is_windows = vim.fn.has("win64") == 1 or vim.fn.has("win32") == 1 or vim.fn.has("win16") == 1

if is_windows then
    local powershell_options = {
      shell = fn.executable "pwsh" == 1 and "pwsh" or "powershell",
      shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
      shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
      shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
      shellquote = "",
      shellxquote = "",
    }

    for option, value in pairs(powershell_options) do
      opt[option] = value
    end
    vim.opt.termguicolors = true
end
vim.opt.termguicolors = true

vim.opt.autochdir = false
