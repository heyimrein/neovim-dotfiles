vim.g.transparent_enabled = true;

local map = vim.keymap.set
local opts = { noremap = true, silent = true, nowait = true }
local cmd = vim.cmd

-- Keymaps --
map("n", "<Leader>tt", ":TransparentToggle<CR>", opts)
