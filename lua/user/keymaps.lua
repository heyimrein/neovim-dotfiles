local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
local cmd = vim.cmd

vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- Any Mode --
map("", "<Leader>j", "<Esc><Right>", opts)
map("", "<Leader>src", ":source $MYVIMRC<CR>", opts)

-- Normal Mode --
map("n", "<C-z>", ":undo<CR>", opts)               -- Undo
map("n", "<Leader>q", ":vertical split<CR>", opts) -- Split Vertically
map("n", "<Leader>n", cmd "noh", opts)

-- Window Navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize Panes
map("n", "<C-Up>", ":resize -2<cr>", opts)
map("n", "<C-Down>", ":resize +2<cr>", opts)
map("n", "<C-Left>", ":vertical resize -2<cr>", opts)
map("n", "<C-Right>", ":vertical resize +2<cr>", opts)

-- Insert Mode --
map("i", "<Leader>j", "<Esc><Right>", opts)

-- Navigation
map("i", "<A-h>", "<Left>", opts)
map("i", "<A-j>", "<Down>", opts)
map("i", "<A-k>", "<Up>", opts)
map("i", "<A-l>", "<Right>", opts)

-- Visual Mode --
map("v", "<Leader>j", "<Esc>", opts)

-- Terminal Mode --
map("t", "<Leader>hh", "<C-\\><C-n>", opts)
