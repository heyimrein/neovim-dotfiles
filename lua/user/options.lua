local options = {
	wrap = false,
	number = true,
	numberwidth = 4,
	smartindent = true,
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	scrolloff = 16,
	cursorline = true,
	list = false,
	hlsearch = false,
	clipboard = "unnamedplus",
}

vim.opt.listchars = {}

for k, v in pairs(options) do
	vim.o[k] = v
end
