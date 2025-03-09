return {
  "iamcco/markdown-preview.nvim",
  build = "cd app && yarn install",
  ft = { "markdown" },
  config = function()
    vim.g.mkdp_auto_start = 1
  end
}
