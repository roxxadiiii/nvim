-- ~/.config/nvim/plugins.lua
return {
  -- Dashboard Configuration
  {
    "glepnir/dashboard-nvim",
    event = "VimEnter", -- Load after starting Neovim
    config = function()
      require("dashboard").setup({
        theme = "hyper", -- Choose your desired theme
        config = {
          header = {
              "██████╗  ██████╗ ██╗  ██╗██╗  ██╗ █████╗ ███╗   ███╗ █████╗ ██╗   ██╗",
              "██╔══██╗██╔═══██╗╚██╗██╔╝╚██╗██╔╝██╔══██╗████╗ ████║██╔══██╗╚██╗ ██╔╝",
              "██████╔╝██║   ██║ ╚███╔╝  ╚███╔╝ ███████║██╔████╔██║███████║ ╚████╔╝ ",
              "██╔══██╗██║   ██║ ██╔██╗  ██╔██╗ ██╔══██║██║╚██╔╝██║██╔══██║  ╚██╔╝  ",
              "██║  ██║╚██████╔╝██╔╝ ██╗██╔╝ ██╗██║  ██║██║ ╚═╝ ██║██║  ██║   ██║   ",
              "╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝   "

          },
          week_header = {
            enable = false,
          },
          shortcut = {
            { desc = "  Find File", group = "@property", action = "Telescope find_files", key = "f" },
            { desc = "  Recent", group = "@property", action = "Telescope oldfiles", key = "r" },
          },
        },
      })
    end,
  }

  -- Other plugins can be added here...
}
