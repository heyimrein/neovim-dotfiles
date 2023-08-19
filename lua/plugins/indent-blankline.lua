vim.cmd "highlight IndentBlanklineChar guifg=#312e45 gui=nocombine"

require "indent_blankline".setup {
	char = "⁞",
	char_highlight_list = {
		"IndentBlanklineChar"
	}
}
