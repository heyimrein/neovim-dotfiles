local lsps = {
	"lua_ls",
	"rust_analyzer",
	"html",
	"cssls",
	"tsserver",
	"pyright",
}

require "mason".setup()
require "mason-lspconfig".setup {
	ensure_installed = lsps
}

local lsp = require "lspconfig"
local capabilities = require "cmp_nvim_lsp".default_capabilities()

for _, lang in ipairs(lsps) do
	lsp[lang].setup {
		capabilities = capabilities,
	}
end

local _border = "double"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
	vim.lsp.handlers.hover, {
		border = _border
	}
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
	vim.lsp.handlers.signature_help, {
		border = _border
	}
)

vim.diagnostic.config {
	float = { border = _border }
}
