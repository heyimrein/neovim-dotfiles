require "nvim-tree".setup()

local api = require "nvim-tree.api"
local opts = { buffer = bufnr, noremap = true, silent = true, nowait = true }
local map = vim.keymap.set

-- Keymaps --
map("n", "<Leader>e", api.tree.toggle, opts)
map("n", " ", api.node.open.edit, opts)
map("n", "a", api.fs.create, opts)
