--    ┌─┐┌─┐┌┬┐┬┌─┐┌┐┌┌─┐ ┬  ┬ ┬┌─┐
--    │ │├─┘ │ ││ ││││└─┐ │  │ │├─┤
--    └─┘┴   ┴ ┴└─┘┘└┘└─┘o┴─┘└─┘┴ ┴

local opt = vim.opt

-- Line numbers
opt.number = true         -- Show line numbers
opt.relativenumber = true  -- Relative line numbers

-- Tabs and indentation
opt.tabstop = 2           -- Tab width
opt.shiftwidth = 2        -- Indent width
opt.expandtab = true      -- Use spaces instead of tabs
opt.autoindent = true     -- Auto indent

-- Search
opt.ignorecase = true     -- Ignore case when searching
opt.smartcase = true      -- Unless uppercase is used

-- Appearance
opt.termguicolors = true  -- True color support
opt.signcolumn = "yes"    -- Always show sign column
opt.wrap = false          -- Don't wrap lines

-- Behavior
opt.swapfile = false      -- Don't use swapfile
opt.backup = false        -- Don't create backup files
opt.undofile = true       -- Enable persistent undo
opt.clipboard = "unnamedplus" -- System clipboard
