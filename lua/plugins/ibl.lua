vim.cmd "highlight IndentBlanklineChar guifg=#312e45 gui=nocombine"

require "ibl".setup {
	indent = {
		char = "▏",
	},
	scope = {
		enabled = false
	}
}
