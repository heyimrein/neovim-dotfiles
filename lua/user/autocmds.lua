local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWritePost", { command = ":Prettier" })
