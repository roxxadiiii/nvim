-- ~/.config/nvim/lua/config/lazy.lua

-- Bootstrap lazy.nvim (auto-install if not present)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Configure lazy.nvim
require("lazy").setup({
  spec = {
    -- Import plugin specs from plugins directory
    { import = "plugins" },
  },
  defaults = {
    lazy = false,  -- Don't lazy-load by default
    version = false, -- Try installing latest stable versions
  },
  install = {
    colorscheme = { "tokyonight", "habamax" }, -- Fallback colorschemes
  },
  checker = {
    enabled = true, -- Check for plugin updates
    notify = false, -- Don't notify on startup
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
