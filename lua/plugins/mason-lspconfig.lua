return {
    {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup {
            -- ensure_installed = { "pyright", "tsserver", "gopls", "sumneko_lua", "clangd", "html", "bashls", "jsonls" } -- List your language servers here
            ensure_installed = { clangd }
        }
    end,
}
}