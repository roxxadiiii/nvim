return {
    "AlphaTechnolog/pywal.nvim",
    name = "pywal",
    priority = 10000,
    config = function()
        require("pywal").setup()
        vim.cmd("colorscheme pywal")

    end
}
