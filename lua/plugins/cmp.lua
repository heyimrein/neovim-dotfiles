local cmp = require "cmp"

cmp.setup({
	snippet = {
		expand = function(args)
			require "luasnip".lsp_expand(args.body)
		end
	},
	window = {
		completion = cmp.config.window.bordered()
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<C-k>"] = cmp.mapping.select_prev_item(),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
	}),
	sources = {
		{ name = "nvim_lua" },
		{ name = "nvim_lsp" },
		{ name = "path" },
		{ name = "luasnip" },
		{ name = "buffer" },
	},
	experimental = {
		native_menu = false,
		ghost_text = true,
	}
})
