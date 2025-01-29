require("CopilotChat").setup {}

vim.api.nvim_set_keymap('', '<leader>cp', ':CopilotChat<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<leader>cpp', ':CopilotChatToggle<CR>', { noremap = true, silent = true })
