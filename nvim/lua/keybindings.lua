vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- save local variable
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- you can mapping keybindings with map('mode','key','operation',opt)
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

-- indent under visual mode
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

-- split window
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt)

-- jump between windows
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- telescope
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
map("n", "<leader>f", ":Telescope find_files<CR>", opt)
map("n", "<leader>g", ":Telescope live_grep<CR>", opt)

-- nvim-tree
map('n', '<A-1>', ':NvimTreeToggle<CR>', opt)

-- bufferline
map("n", "<A-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<A-l>", ":BufferLineCycleNext<CR>", opt)
