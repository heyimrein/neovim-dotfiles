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
	use "windwp/nvim-ts-autotag"
	use "filipdutescu/renamer.nvim"
	use "kylechui/nvim-surround"

	use "github/copilot.vim"
	use "CopilotC-Nvim/CopilotChat.nvim"

	use "numToStr/Comment.nvim"
	use "lukas-reineke/indent-blankline.nvim"

	use "ggandor/leap.nvim"

	use {
		"S1M0N38/love2d.nvim",
		config = function()
			require("love2d").setup()
		end
	}

	use "nvim-tree/nvim-tree.lua"
	use "nvim-tree/nvim-web-devicons"

	use "jiangmiao/auto-pairs"

	use "andweeb/presence.nvim"

	use "registerGen/clock.nvim"

	use "xiyaowong/transparent.nvim"
	use "projekt0n/github-nvim-theme"
	use "zootedb0t/citruszest.nvim"
	use "kdheepak/monochrome.nvim"
	use "hoprr/calvera-dark.nvim"
	use "nyoom-engineering/oxocarbon.nvim"
	use "xero/miasma.nvim"
	use "olimorris/onedarkpro.nvim"

	if packer_bootstrap then
		require('packer').sync()
	end
end)
