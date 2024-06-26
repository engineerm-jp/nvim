require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local option = vim.opt

map("n", ";", ":", { desc = "cmd enter command mode" })
map("i", "jk", "<esc>")
map("i", "JK", "<esc>")
map("n", "<leader>jk", "<cmd>noh<CR>")
map("n", "<leader>nh", "<cmd>noh<CR>", {desc = "Delete highlight"})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("v", "<leader>jk", "<ESC>")
-- require('leap').create_default_mappings()

map("n", "<leader>+", "<C-a>", {desc = "Increment number"})
map("n", "<leader>-", "<C-x>", {desc = "Decrement number"})

map("n", "<leader>sv", "<c-w>v", {desc = "Split window vertically"})
map("n", "<leader>sh", "<c-w>s", {desc = "Split window horizontally"})
map("n", "<leader>se", "<c-w>=", {desc = "Equal split"})
map("n", "<leader>sx", "<cmd>close<cr>", {desc = "close surrent split"})


map("t", "<C-h>", "<C-\\><C-N><C-w-h>", { desc = "Terminal Escape terminal mode and move left" })
map("t", "<C-j>", "<C-\\><C-N><C-w-j>", { desc = "Terminal Escape terminal mode and move down" })
map("t", "<C-k>", "<C-\\><C-N><C-w-k>", { desc = "Terminal Escape terminal mode and move up" })
map("t", "<C-l>", "<C-\\><C-N><C-w-l>", { desc = "Terminal Escape terminal mode and move right" })


map("n", "<A-j>", "<C-w>-3", {desc = "Decrease current window height"})
map("n", "<A-k>", "<C-w>+3", {desc = "Increase current window height"})
map("n", "<A-h>", "<C-w><3", {desc = "Decrease current window width"})
map("n", "<A-l>", "<C-w>>3", {desc = "Increase current window width"})


map({ "n", "t" }, "<A-v>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm", size = 0.3 }
end, { desc = "Terminal Toggleable vertical term" })

map({ "n", "t" }, "<A-h>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm", size = 0.3 }
end, { desc = "Terminal New horizontal term" })

map({ "n", "t" }, "<A-t>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "Terminal Toggle Floating term" })

-- TAB length
option.shiftwidth = 4

-- custom key mappings for leap
map("n", "cl", "s")
map("n", "cc", "S")

map("n", "<leader>gs", '<Plug>(leap-from-window)', {desc = "Leap search from window"})
map({"n", "v"}, "s", '<Plug>(leap)', {desc = "Leap search (both directions)"})


map("n", "<leader>e", "$", {desc = "Move to the end of line"})
map("n", "<leader><S-e>", "0", {desc = "Move to the start of line"})

-- custom key mappings for copilot
map("i", "<A-s>", "<Plug>(copilot-suggest)", {desc = "Copilot suggest"})
map("i", "<A-d>", "<Plug>(copilot-dismiss)", {desc = "Copilot dismiss"})
map("i", "<A-n>", "<Plug>(copilot-next)", {desc = "Copilot next"})
map("i", "<A-p>", "<Plug>(copilot-previous)", {desc = "Copilot previous"})
map("i", "<A-w>", "<Plug>(copilot-accept-word)", {desc = "Copilot accept"})
map("i", "<A-a>", "<Plug>(copilot-accept-line)", {desc = "Copilot accept line"})

-- custom keys for folding
map("n", "<leader>op", "zo", {desc = "Fold open"})
map("n", "<leader>cl", "zc", {desc = "Fold close"})

-- custom keys for indentation
map({"n", "v"}, "<leader>ih", "< ", {desc = "Indent - Left"})
map({"n", "v"}, "<leader>il", "> ", {desc = "Indent - Right"})

-- custom mapping for cursor placement
map("n", "<leader><leader>", "zz", {desc = "Place cursor to the middle of the window"})



