vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Apperance related stuff
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'akinsho/bufferline.nvim'

  -- Colorschemes
  use 'folke/tokyonight.nvim'
  use 'olimorris/onedarkpro.nvim'
  use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}

  -- LSP Stuff
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind-nvim'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-textobjects'

  -- Insert/indentation completion
  use '9mm/vim-closer'
  use 'tmhedberg/matchit'
  use 'lukas-reineke/indent-blankline.nvim'

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'jvgrootveld/telescope-zoxide'

  -- Autocompletion plugin
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'lukas-reineke/cmp-rg'
  use 'f3fora/cmp-spell'
  use 'lukas-reineke/cmp-under-comparator'

  -- DAP
  use {'mfussenegger/nvim-dap'}
  use {'nvim-telescope/telescope-dap.nvim'}
  use {'mfussenegger/nvim-dap-python'}

  -- Snippets
  -- use 'L3MON4D3/LuaSnip'
  -- use 'saadparwaiz1/cmp_luasnip'
  -- use 'rafamadriz/friendly-snippets'

  -- Terminal
  -- use 'akinsho/toggleterm.nvim'

  -- Git
  use 'tpope/vim-fugitive'
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
  use 'kdheepak/lazygit.nvim'

  use 'b3nj5m1n/kommentary'
  use 'famiu/bufdelete.nvim'

end)
