local renamer = require "renamer"
renamer.setup {
	with_popup = true,
}

vim.keymap.set("n", "rr", ":lua require('renamer').rename()<CR>", {})
