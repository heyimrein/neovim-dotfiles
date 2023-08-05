local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use "wbthomason/packer.nvim"

	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"
	use "neovim/nvim-lspconfig"

	use "lukas-reineke/lsp-format.nvim"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-cmdline"
	use "hrsh7th/nvim-cmp"
	use "L3MON4D3/LuaSnip"
	use "jose-elias-alvarez/null-ls.nvim"
	use "MunifTanjim/prettier.nvim"

	use "saadparwaiz1/cmp_luasnip"

	use "nvim-lua/plenary.nvim"
	use "nvim-telescope/telescope.nvim"

	use "nvim-treesitter/nvim-treesitter"

	use "nvim-tree/nvim-tree.lua"
	use "nvim-tree/nvim-web-devicons"

	use "andweeb/presence.nvim"

	use "ray-x/starry.nvim"
	use "kvrohit/mellow.nvim"
	use "zootedb0t/citruszest.nvim"
	use "xiyaowong/transparent.nvim"

	if packer_bootstrap then
		require('packer').sync()
	end
end)
