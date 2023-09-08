require "mason".setup()
require "mason-lspconfig".setup()

local lsps = {
	"lua_ls",
	"rust_analyzer",
	"html",
	"cssls",
	"tsserver",
	"pyright",
}
local forms = {
	"autopep8",
	"prettier",
}
local lsp = require "lspconfig"
local capabilities = require "cmp_nvim_lsp".default_capabilities()
local format = require "lsp-format"

format.setup()

for _, lang in ipairs(lsps) do
	lsp[lang].setup {
		capabilities = capabilities,
		on_attach = format.on_attach
	}
end

-- for _, lang in ipairs(forms) do
-- 	lsp[lang].setup {
-- 		capabilities = capabilities,
-- 		on_attach = format.on_attach,
-- 	}
-- end

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
