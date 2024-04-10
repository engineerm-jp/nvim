require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local option = vim.opt

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>nh", "<cmd>noh<CR>", {desc = "Delete highlight"})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("v", "ji", "<ESC>")
-- require('leap').create_default_mappings()

map("n", "<leader>+", "<C-a>", {desc = "Increment number"})
map("n", "<leader>-", "<C-x>", {desc = "Decrement number"})

map("n", "<leader>sv", "<c-w>v", {desc = "Split window vertically"})
map("n", "<leader>ss", "<c-w>s", {desc = "Split window horizontally"})
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


map({ "n", "t" }, "<leader>v", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm", size = 0.3 }
end, { desc = "Terminal Toggleable vertical term" })

map({ "n", "t" }, "<leader>h", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm", size = 0.3 }
end, { desc = "Terminal New horizontal term" })

map({ "n", "t" }, "<leader>t", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "Terminal Toggle Floating term" })


map("n", "cl", "s")
map("n", "cc", "S")

-- option.shiftwidth = 4
