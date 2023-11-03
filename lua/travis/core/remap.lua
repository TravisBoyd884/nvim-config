local keymap = vim.api.nvim_set_keymap

local default_opts = { noremap = true, silent = true}

vim.g.mapleader = ' '

-- nvim
keymap("i", "kj", "<Esc>", default_opts)
keymap("n","<C-s>", "<cmd>w<CR>", default_opts)
keymap("n","<leader>c", "<cmd>bd<CR>", default_opts)

-- nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", {noremap = false})

-- Lazy.nvim
keymap("n", "<leader>l", ":Lazy<CR>", default_opts)

-- Switch window
keymap("n", "<C-h>", "<C-w>h", default_opts)
keymap("n", "<C-l>", "<C-w>l", default_opts)
keymap("n", "<C-j>", "<C-w>j", default_opts)
keymap("n", "<C-k>", "<C-w>k", default_opts)
keymap("t", "<C-k>", "<ESC><C-w>k", default_opts)

-- Switch buffer
keymap("n", "<S-h>", ":bprevious<CR>", default_opts)
keymap("n", "<S-l>", ":bnext<CR>", default_opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", default_opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", default_opts)

