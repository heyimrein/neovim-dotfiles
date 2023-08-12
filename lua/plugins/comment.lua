require "comment".setup {
	mappings = {
		basic = true
	},
	toggler = {
		line = "gcc"
	}
}

local map = vim.api.nvim_set_keymap

map("", "<C-_>", "gc", {})
