local builtin = require "telescope.builtin"
local map = vim.keymap.set

-- Keymaps --
map("n", "<Leader>ff", builtin.find_files, {})
map("n", "<Leader>fg", builtin.live_grep, {})
map("n", "<Leader>fb", builtin.buffers, {})
map("n", "<Leader>fh", builtin.help_tags, {})
