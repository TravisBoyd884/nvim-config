local keymap = vim.api.nvim_set_keymap

local default_opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("i", "<C-J>", 'copilot#Accept("\\<CR>")', {
	expr = true,
	replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

-- nvim
keymap("i", "kj", "<Esc>", default_opts)
keymap("n", "<C-s>", "<cmd>w<CR>", default_opts)
keymap("n", "<leader>c", "<cmd>bd<CR>", default_opts)
keymap("n", "j", "gj", default_opts)
keymap("n", "k", "gk", default_opts)
keymap("n", "<leader>w", "<cmd>vertical resize +20<CR>", default_opts)
keymap("n", "<leader>h", "<cmd>vertical resize -20<CR>", default_opts)

-- nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = false })

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

-- Fugitive
keymap("n", "<leader>g", "<cmd>Git<CR>", default_opts)

-- Debugging
keymap("n", "<leader>b", "<cmd>:lua require'dap'.toggle_breakpoint()<CR>", default_opts)
keymap("n", "<F5>", "<cmd>:lua require'dap'.continue()<CR>", default_opts)
keymap("n", "<F10>", "<cmd>:lua require'dap'.step_over()<CR>", default_opts)
keymap("n", "<F11>", "<cmd>:lua require'dap'.step_into()<CR>", default_opts)
keymap("n", "<F12>", "<cmd>:lua require'dap'.step_out()<CR>", default_opts)
