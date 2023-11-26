vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- QoL
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- Syntax 
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Manage LSP servers
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- LSP Support
      'neovim/nvim-lspconfig',

      -- Autocompletion
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
    }
  }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'windwp/nvim-autopairs'

  -- Themes
  use { 'rose-pine/neovim', as = 'rose-pine' }

  -- Lines
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }
  use {
    'akinsho/bufferline.nvim', tag = "*",
    requires = { 'nvim-tree/nvim-web-devicons' }
  }
end)
