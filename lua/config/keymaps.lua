local map = vim.keymap.set
local option = vim.opt

map("n", ";", ":", { desc = "cmd enter command mode" })

map({"i", "t"}, "jk", "<esc>")
map("i", "JK", "<esc>")

map("n", "<leader>jk", "<cmd>noh<CR>")
map("n", "<leader>nh", "<cmd>noh<CR>", {desc = "Delete highlight"})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("v", "<leader>jk", "<ESC>")

map("n", "<leader>+", "<C-a>", {desc = "Increment number"})
map("n", "<leader>-", "<C-x>", {desc = "Decrement number"})

map("n", "<leader>sv", "<c-w>v", {desc = "Split window vertically"})
map("n", "<leader>sh", "<c-w>s", {desc = "Split window horizontally"})
map("n", "<leader>se", "<c-w>=", {desc = "Equal split"})
map("n", "<leader>sx", "<cmd>close<cr>", {desc = "close surrent split"})

-- map("t", "<C-h>", "<C-\\><C-N><C-w-h>", { desc = "Terminal Escape terminal mode and move left" })
-- map("t", "<C-j>", "<C-\\><C-N><C-w-j>", { desc = "Terminal Escape terminal mode and move down" })
-- map("t", "<C-k>", "<C-\\><C-N><C-w-k>", { desc = "Terminal Escape terminal mode and move up" })
-- map("t", "<C-l>", "<C-\\><C-N><C-w-l>", { desc = "Terminal Escape terminal mode and move right" })

map("n", "<C-h>", "<C-w>h", { desc = "Terminal Escape terminal mode and move left" })
map("n", "<C-j>", "<C-w>j", { desc = "Terminal Escape terminal mode and move down" })
map("n", "<C-k>", "<C-w>k", { desc = "Terminal Escape terminal mode and move up" })
map("n", "<C-l>", "<C-w>l", { desc = "Terminal Escape terminal mode and move right" })

map("i", "<C-h>", "<LEFT>", { desc = "Move left" })
map("i", "<C-j>", "<DOWN>", { desc = "Move down"})
map("i", "<C-k>", "<UP>", { desc = "Move up" })
map("i", "<C-l>", "<RIGHT>", { desc = "Move right" })

map("n", "<A-j>", "<C-w>-3", {desc = "Decrease current window height"})
map("n", "<A-k>", "<C-w>+3", {desc = "Increase current window height"})
map("n", "<A-h>", "<C-w><3", {desc = "Decrease current window width"})
map("n", "<A-l>", "<C-w>>3", {desc = "Increase current window width"})

map({"n", "v"}, "<leader>e", "$", {desc = "Move to the end of line"})
map("n", "<leader><S-e>", "0", {desc = "Move to the start of line"})

-- custom key mappings for copilot
map("i", "<A-s>", "<Plug>(copilot-suggest)", {desc = "Copilot suggest"})
map("i", "<A-d>", "<Plug>(copilot-dismiss)", {desc = "Copilot dismiss"})
map("i", "<A-n>", "<Plug>(copilot-next)", {desc = "Copilot next"})
map("i", "<A-p>", "<Plug>(copilot-previous)", {desc = "Copilot previous"})

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

map("c", "<C-TAB>", "<UP>", {desc = "Cmd previous"})
map("c", "<S><TAB>", "<DOWN>", {desc = "Cmd next"})


-- map("t", "jk", "<ESC>", {desc = "Cmd ESC"})
-- map("t", "<C><TAB>", "<UP>", {desc = "Cmd previous"})
-- map("t", "<S><TAB>", "<DOWN>", {desc = "Cmd next"})

local telescope_buildin = require('telescope.builtin')
map('n', '<leader>ff', telescope_buildin.find_files, {})
-- map('n', '<leader>ff', telescope_buildin.live_grep, {})
map("n", "<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "Telescope Find in current buffer" })

-- move tabe
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })


map("n", "<leader>rp", '"0p', { desc = "Paste 0" })

map("v", "p", '"_dP"', { desc = "Paste" })


map({"n"}, "<C-n>", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle nvim tree" })

-- Terminal
-- map({"n", "t"}, "<A-t>", "<cmd>FloatermToggle<cr>", { desc = "Toggle terminal" })
map({"n", "t"}, "<A-t>", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle terminal" })

map({"n", "t"}, "<C-t>h", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Toggle terminal" })


-- map('t', '<esc>', [[<C-\><C-n>]], {buffer = 0})
-- map('t', 'jk', [[<C-\><C-n>]], {buffer = 0})
map('t', '<C-h>', [[<Cmd>wincmd h<CR>]], {buffer = 0})
map('t', '<C-j>', [[<Cmd>wincmd j<CR>]],  {buffer = 0})
map('t', '<C-k>', [[<Cmd>wincmd k<CR>]], {buffer = 0})
map('t', '<C-l>', [[<Cmd>wincmd l<CR>]], {buffer = 0})
map('t', '<C-w>', [[<C-\><C-n><C-w>]], {buffer = 0})

-- Cmp 
map({"c"}, "<C-j>", "<DOWN>", { desc = "Next command" })
map({"c"}, "<C-k>", "<UP>", { desc = "Previous command" })

-- Ufo - fold
map({"n"}, "<C-f>", "za", { desc = "Toggle fold" })
map('n', 'zR', require('ufo').openAllFolds)
map('n', 'zM', require('ufo').closeAllFolds)

-- Delete buffer
map({"n"}, "<leader>x", "<cmd>q<CR>", { desc = "Delete buffer" })








