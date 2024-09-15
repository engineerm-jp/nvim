local map = vim.keymap.set
local option = vim.opt

-- to make it easier to type commands
map("n", ";", ":", { desc = "cmd enter command mode" })

-- escape
map({"i", "t"}, "jk", "<esc>")
map("i", "JK", "<esc>")

map("n", "<leader>jk", "<cmd>noh<CR>")
map("n", "<leader>nh", "<cmd>noh<CR>", {desc = "Delete highlight"})

-- escape in visual mode
map("v", "<leader>jk", "<ESC>")

-- window split
map("n", "<leader>sv", "<c-w>v", {desc = "Split window vertically"})
map("n", "<leader>sh", "<c-w>s", {desc = "Split window horizontally"})
map("n", "<leader>se", "<c-w>=", {desc = "Equal split"})
map("n", "<leader>sx", "<cmd>close<cr>", {desc = "close surrent split"})

-- move between windows
map("n", "<C-h>", "<C-w>h", { desc = "Move to the left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to the lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to the upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to the right window" })

-- move cursor during insert mode
map("i", "<C-h>", "<LEFT>", { desc = "Move left" })
map("i", "<C-j>", "<DOWN>", { desc = "Move down"})
map("i", "<C-k>", "<UP>", { desc = "Move up" })
map("i", "<C-l>", "<RIGHT>", { desc = "Move right" })

-- resize window
map("n", "<A-j>", "<C-w>-3", {desc = "Decrease current window height"})
map("n", "<A-k>", "<C-w>+3", {desc = "Increase current window height"})
map("n", "<A-h>", "<C-w><3", {desc = "Decrease current window width"})
map("n", "<A-l>", "<C-w>>3", {desc = "Increase current window width"})

-- additional cursor movements
map({"n", "v"}, "<leader>e", "$", {desc = "Move to the end of line"})
map("n", "<leader><S-e>", "0", {desc = "Move to the start of line"})

-- custom key mappings for copilot
-- map("i", "<A-s>", "<Plug>(copilot-suggest)", {desc = "Copilot suggest"})
-- map("i", "<A-d>", "<Plug>(copilot-dismiss)", {desc = "Copilot dismiss"})
-- map("i", "<A-n>", "<Plug>(copilot-next)", {desc = "Copilot next"})
-- map("i", "<A-p>", "<Plug>(copilot-previous)", {desc = "Copilot previous"})
-- map("i", "<a-w>", "<plug>(copilot-accept-word)", {desc = "copilot accept"})
-- map("i", "<tab>", "<plug>(copilot-accept-line)", {desc = "copilot accept line"})

-- custom keys for folding
map("n", "<leader>op", "zo", {desc = "Fold open"})
map("n", "<leader>cl", "zc", {desc = "Fold close"})

-- custom keys for indentation
map({"n"}, "<", "<<", {desc = "Indent - Left"})
map({"n"}, ">", ">>", {desc = "Indent - Right"})
map({"v"}, "<", "<gv", {desc = "Indent - Left"})
map({"v"}, ">", ">gv", {desc = "Indent - Right"})

-- custom mapping for cursor placement
map("n", "<leader><leader>", "zz", {desc = "Place cursor to the middle of the window"})

local telescope_buildin = require('telescope.builtin')
map('n', '<leader>ff', telescope_buildin.find_files, {})
-- map('n', '<leader>ff', telescope_buildin.live_grep, {})
map("n", "<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "Telescope Find in current buffer" })
-- map("n", "qq", telescope_actions.close, { desc = "Telescope Find in current buffer" })

-- move tabs
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })


-- copy and paste behaviour
map("n", "<leader>rp", '"0p', { desc = "Paste 0" })
map("v", "p", '"_dP"', { desc = "Paste" })

-- nvim tree toggle
map({"n"}, "<C-n>", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle nvim tree" })

-- Terminal toggle
-- map({"n", "t"}, "<A-t>", "<cmd>FloatermToggle<cr>", { desc = "Toggle terminal" })
map({"n", "t"}, "<A-t>", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle terminal (float)" })
map({"n", "t"}, "<C-t>h", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Toggle terminal (horizontal)" })
map({"n", "t"}, "<C-t>v", "<cmd>ToggleTerm direction=vertical<cr>", { desc = "Toggle terminal (vertical)"})

-- select commands from history 
map({"c"}, "<C-j>", "<DOWN>", { desc = "Next command" })
map({"c"}, "<C-k>", "<UP>", { desc = "Previous command" })

-- Ufo - fold
map({"n"}, "<C-f>", "za", { desc = "Toggle fold" })
map('n', 'zR', require('ufo').openAllFolds)
map('n', 'zM', require('ufo').closeAllFolds)

-- Delete buffer
map({"n"}, "<leader>x", "<cmd>q<CR>", { desc = "Delete buffer" })

