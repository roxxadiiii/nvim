return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      -- Load the Catppuccin colorscheme
      require("lualine").setup {
        options = {
        theme = "catppuccin", -- Match the colorscheme
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
    },
      }
    end,
}