require "mason".setup()
require "mason-lspconfig".setup()

local langs = { "lua_ls", "rust_analyzer", "html", "cssls", "tsserver" }
local lsp = require "lspconfig"
local capabilities = require "cmp_nvim_lsp".default_capabilities()
local format = require "lsp-format"

format.setup()

for _, lang in ipairs(langs) do
	lsp[lang].setup {
		capabilities = capabilities,
		on_attach = format.on_attach
	}
end
