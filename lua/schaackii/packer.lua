vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'
	use ({
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			vim.cmd('colorscheme rose-pine')
		end   
	})
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use('j-hui/fidget.nvim')
	use('williamboman/mason.nvim')
	use('williamboman/mason-lspconfig.nvim')
	use('mfussenegger/nvim-jdtls')
	use('neovim/nvim-lspconfig')
	use('hrsh7th/nvim-cmp')
	use('hrsh7th/cmp-nvim-lsp')
	use('nvim-treesitter/playground')
	use {
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { {"nvim-lua/plenary.nvim"} }
	}

end)
