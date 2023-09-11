local cmd = vim.cmd
local create_cmd = vim.api.nvim_create_user_command

create_cmd("Wso", function()
		cmd "w"
		cmd "so"
	end,
	{})

vim.api.nvim_create_autocmd("BufWritePre", {
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format()
				end,
			})
