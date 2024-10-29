-- ~/.config/nvim/init.lua or ~/.config/nvim/lua/core/lsp.lua

local lspconfig = require('lspconfig')

-- Setup for Python
lspconfig.pyright.setup {}

-- Setup for TypeScript and JavaScript
lspconfig.ts_ls.setup{}

-- Setup for Go
lspconfig.gopls.setup {}

-- Setup for Lua
lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }, -- Recognize 'vim' as a global variable
            },
        },
    },
}

-- Setup for C/C++
lspconfig.clangd.setup {}

-- Setup for HTML
lspconfig.html.setup {}

-- Setup for Bash
lspconfig.bashls.setup {}

-- Setup for JSON
lspconfig.jsonls.setup {}

-- Additional language servers can be added here...
