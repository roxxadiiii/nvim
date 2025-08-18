-- ~/.config/nvim/lua/config/keymaps.lua
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Window management
keymap("n", "<leader>sv", "<C-w>v", opts)
keymap("n", "<leader>sh", "<C-w>s", opts)
keymap("n", "<leader>se", "<C-w>=", opts)
keymap("n", "<leader>sx", ":close<CR>", opts)

-- Buffer navigation
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>x", ":bdelete<CR>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Clear search highlights
keymap("n", "<leader>nh", ":nohl<CR>", opts)

keymap('n', '<leader>f' , ":Pick files<CR>")
keymap('n', '<leader>h' , ":Pick help<CR>")
keymap('n', '<leader>e', ':Neotree toggle<CR>', { silent = true, desc = 'Toggle Neo-tree' })
    -- Optional: Keep Ctrl+n as alternative
keymap('n', '<C-n>', ':Neotree toggle<CR>', { silent = true, desc = 'Toggle Neo-tree' })
    -- Additional useful keymaps
keymap('n', '<leader>nf', ':Neotree reveal<CR>', { silent = true, desc = 'Reveal current file in Neo-tree' })
keymap('n', '<leader>ng', ':Neotree git_status<CR>', { silent = true, desc = 'Open Neo-tree git status' })
keymap('n', '<leader>nb', ':Neotree buffers<CR>', { silent = true, desc = 'Open Neo-tree buffers' })
