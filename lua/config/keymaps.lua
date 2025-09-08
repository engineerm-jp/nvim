local map = vim.keymap.set
local option = vim.opt

-- to make it easier to type commands
map("n", ";", ":", { desc = "cmd enter command mode" })

-- escape
map({"i", "t", "c"}, "jk", "<esc>")
map("i", "JK", "<esc>")

map("n", "<leader>jk", "<cmd>noh<CR>")
map("n", "<leader>nh", "<cmd>noh<CR>", {desc = "Delete highlight"})

-- escape in visual mode
map("v", "<leader>jk", "<ESC>")

-- window split
-- map("n", "<leader>sv", "<c-w>v", {desc = "Split window vertically"})

map("n", "<leader>sv", "<c-w>v<c-w>l", {desc = "Split window vertically and move to it"})
map("n", "<leader>sh", "<c-w>s<c-w>j", {desc = "Split window horizontally"})
map("n", "<leader>se", "<c-w>=", {desc = "Equal split"})
map("n", "<leader>sx", "<cmd>close<cr>", {desc = "close surrent split"})

-- move between windows
map({"n", "t", "c"}, "<C-h>", "<C-w>h", { desc = "Move to the left window" })
map({"n", "t", "c"}, "<C-j>", "<C-w>j", { desc = "Move to the lower window" })
map({"n", "t", "c"}, "<C-k>", "<C-w>k", { desc = "Move to the upper window" })
map({"n", "t", "c"}, "<C-l>", "<C-w>l", { desc = "Move to the right window" })

-- move cursor during insert mode
map({"i", "t"}, "<C-h>", "<LEFT>", { desc = "Move left" })
map({"i", "t"}, "<C-j>", "<DOWN>", { desc = "Move down"})
map({"i", "t"}, "<C-k>", "<UP>", { desc = "Move up" })
map({"i", "t"}, "<C-l>", "<RIGHT>", { desc = "Move right" })

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
map("n", "<leader>fr", telescope_buildin.registers, { desc = "Telescope Find Resisters" })

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

-- -- Delete buffer
-- map({"n"}, "<leader>x", "<cmd>q<CR>", { desc = "Delete buffer" })

-- Delete buffer
local function smart_buffer_delete()
  local current_buf = vim.api.nvim_get_current_buf()
  local buffers = vim.api.nvim_list_bufs()
  
  -- Filter out unlisted buffers and the current buffer
  local valid_buffers = {}
  for _, buf in ipairs(buffers) do
    if vim.api.nvim_buf_is_loaded(buf) and vim.api.nvim_buf_get_option(buf, 'buflisted') and buf ~= current_buf then
      table.insert(valid_buffers, buf)
    end
  end
  
  -- If there are other buffers, switch to the next one, or previous if no next
  if #valid_buffers > 0 then
    -- Try to find the next buffer in the buffer list
    local current_index = nil
    for i, buf in ipairs(buffers) do
      if buf == current_buf then
        current_index = i
        break
      end
    end
    
    -- Find next valid buffer
    local next_buf = nil
    if current_index then
      for i = current_index + 1, #buffers do
        if vim.api.nvim_buf_is_loaded(buffers[i]) and vim.api.nvim_buf_get_option(buffers[i], 'buflisted') then
          next_buf = buffers[i]
          break
        end
      end
      
      -- If no next buffer found, try previous
      if not next_buf then
        for i = current_index - 1, 1, -1 do
          if vim.api.nvim_buf_is_loaded(buffers[i]) and vim.api.nvim_buf_get_option(buffers[i], 'buflisted') then
            next_buf = buffers[i]
            break
          end
        end
      end
    end
    
    -- Switch to the found buffer or first valid buffer
    vim.api.nvim_set_current_buf(next_buf or valid_buffers[1])
  else
    -- No other buffers, create a new empty buffer
    vim.cmd('enew')
  end
  
  -- Delete the original buffer
  vim.api.nvim_buf_delete(current_buf, { force = false })
end

-- map({"n"}, "<leader>x", smart_buffer_delete, { desc = "Delete buffer" })
map({"n"}, "<leader>x", "<cmd>close<cr>", { desc = "Delete buffer" })
-- copilot chat
-- map({"n", "v"}, "<C-i>",  "<c-w>s<c-w>j<cmd>CopilotChatToggle<CR>", { desc = "Copilot chat toggle" })
local vim = vim


local function toggle_copilot_chat()
  local chat_buf = vim.fn.bufnr('^copilot-chat$')
  local chat_win = vim.fn.bufwinnr(chat_buf)
  -- print("chat_win:", chat_win)  -- Debugging statement to check the value of chat_win
  if chat_win == -1 then
    vim.cmd('rightbelow vsplit | CopilotChatToggle')
    vim.cmd('startinsert')
  else
      vim.cmd('CopilotChatToggle')
      vim.cmd('close')
  end
end

local function use_copilot_chat()
  local chat_buf = vim.fn.bufnr('^copilot-chat$')
  local chat_win = vim.fn.bufwinnr(chat_buf)
  -- print("chat_win:", chat_win)  -- Debugging statement to check the value of chat_win
  if chat_win == -1 then
    vim.cmd('rightbelow vsplit | CopilotChatToggle')
  else
    vim.api.nvim_set_current_win(vim.fn.win_getid(chat_win))
  end
  vim.cmd('startinsert')
end

map({"n", "i"}, "<C-i>", toggle_copilot_chat, { desc = "Copilot chat toggle" })
map({"v"}, "<C-i>", use_copilot_chat, { desc = "Copilot chat toggle" })
map({"n", "v"}, "<C-i>e", "<cmd>CopilotChatExplain<CR>", { desc = "Copilot chat explain" })
map({"n", "v"}, "<C-i>r", "<cmd>CopilotChatReview<CR>", { desc = "Copilot chat review" })
map({"n", "v"}, "<C-i>f", "<cmd>CopilotChatFix<CR>", { desc = "Copilot chat fix" })
map({"n", "v"}, "<C-i>o", "<cmd>CopilotChatOptimize<CR>", { desc = "Copilot chat optimize" })
map({"n", "v"}, "<C-i>d", "<cmd>CopilotChatDoc<CR>", { desc = "Copilot chat document" })
map({"n", "v"}, "<C-i>t", "<cmd>CopilotChatTests<CR>", { desc = "Copilot chat tests" })
