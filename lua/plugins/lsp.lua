return {
  -- LSP Configuration & Plugins
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Mason for automatic LSP installation
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',
      
      -- Status updates for LSP
      { 'j-hui/fidget.nvim', opts = {} },
      
      -- Additional lua configuration
      'folke/neodev.nvim',
    },
  },

  -- Autocompletion (IntelliSense-like)
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      -- Snippet Engine
      {
        'L3MON4D3/LuaSnip',
        build = (function()
          return 'make install_jsregexp'
        end)(),
      },
      'saadparwaiz1/cmp_luasnip',

      -- Completion sources
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      
      -- Snippets
      'rafamadriz/friendly-snippets',
    },
  },

  -- Better syntax highlighting
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },
}
