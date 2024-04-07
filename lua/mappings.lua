require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local option = vim.opt

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>nh", ":nohl<CR>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("v", "ji", "<ESC>")
-- require('leap').create_default_mappings()

map("n", "<leader>+", "<C-a>", {desc = "Increment number"})
map("n", "<leader>-", "<C-x>", {desc = "Decrement number"})

map("n", "<leader>sv", "<C-w>v", {desc = "Split window vertically"})
map("n", "<leader>sh", "<C-w>s", {desc = "Split window horizontally"})
map("n", "<leader>se", "<C-w>=", {desc = "Equal split"})
map("n", "<leader>sx", "<cmd>close<CR>", {desc = "Close current split"})


option.shiftwidth = 4
