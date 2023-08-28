local opts = { noremap = true, silent = true }
local map = vim.keymap.set
local bmap = vim.api.nvim_buf_set_keymap
local cmd = vim.cmd

vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- Any Mode --
map("", "<Leader>j", "<Esc><Right>", opts)
map("", "<Leader>src", ":source $MYVIMRC<CR>", opts)
map("n", "<Leader>h", ":lua vim.lsp.buf.hover()<CR>", opts)

-- Unmaps
map("", "K", "<Nop>", opts)

-- Normal Mode --
map("n", "<C-z>", ":undo<CR>", opts)               -- Undo
map("n", "<Leader>q", ":vertical split<CR>", opts) -- Split Vertically
map("n", "ra", ":%s/\\<<C-r><C-w>\\>//g<left><left>", opts)

map("n", "rr", vim.lsp.buf.rename, opts)

-- Center on Vertical Navigation
-- map("n", "j", "jzz", opts)
-- map("n", "k", "kzz", opts)

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
