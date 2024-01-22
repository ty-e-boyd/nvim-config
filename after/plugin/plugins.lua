-- This file can be laoded by calling `lua require('plugins')` from your init.vim
--
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
-- run :PackerCompile
vim.cmd([[
	augroup packer_user_config
    		autocmd!
    		autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  	augroup end
]])

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use { 'catppuccin/nvim', as = 'catppuccin' }

	-- Treesitter
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'williamboman/mason.nvim'

	-- Markdown preview
	use 'ellisonleao/glow.nvim'
	use 'simrat39/symbols-outline.nvim'
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})

	-- Language packs
	use 'sheerun/vim-polyglot'

	-- Harpoon by ThePrimeagen
	use 'ThePrimeagen/harpoon'

	-- Nvim motions
	use {
		'phaazon/hop.nvim',
		branch = 'v2',
		requires = { 'nvim-lua/plenary.nvim' },
		config = function()
			require 'hop'.setup { keys = 'etovxpqdgfblzhckisuran' }
		end
	}

	-- LSP autocomplete
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'neovim/nvim-lspconfig'

	-- LSP Saga ????
	-- use({
	--	"glepnir/lspsaga.nvim",
	--	branch = "main",
	--	config = function()
	--		require('lspsaga').setup({})
	--	end
	-- })

	-- File browsing
	use 'nvim-telescope/telescope-file-browser.nvim'

	-- Buffer navigation
	use 'nvim-lualine/lualine.nvim'

	-- Haskell
	use 'neovimhaskell/haskell-vim'
	use 'alx741/vim-hindent'

	-- debugging
	use 'mfussenegger/nvim-dap'
	use 'leoluz/nvim-dap-go'
	use 'rcarriga/nvim-dap-ui'
	use 'theHamsta/nvim-dap-virtual-text'
	use 'nvim-telescope/telescope-dap.nvim'

	-- Grammer checking because I can't english
	use 'rhysd/vim-grammarous'

	-- Telescope requirements
	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'

	-- Telescope
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

	-- Git diff
	use 'sindrets/diffview.nvim'

	-- Magit
	use 'TimUntersberger/neogit'

	-- Todo comments
	use 'folke/todo-comments.nvim'

	-- Dev icons
	use 'kyazdani42/nvim-web-devicons'

	-- Fullstack dev
	use 'pangloss/vim-javascript' -- JS Support
	use 'leafgarland/typescript-vim' -- TS Support
	use 'maxmellon/vim-jsx-pretty' -- JS and JSX Syntax
	use 'jparise/vim-graphql'     -- GraphQL Syntax
	use 'mattn/emmet-vim'

	-- Prettier Setup
	use('jose-elias-alvarez/null-ls.nvim')
	use('MunifTanjim/prettier.nvim')

	-- Flutter/Dart Tools
	use {
		'akinsho/flutter-tools.nvim',
		requires = {
			'nvim-lua/plenary.nvim',
			'stevearc/dressing.nvim', -- optional for vim.ui.select
		},
	}

	-- Le Duck
	use 'tamton-aquib/duck.nvim'
end)
