local renamer = require "renamer"
renamer.setup {}

vim.keymap.set("n", "rr", ":lua require('renamer').rename()<CR>", {})
