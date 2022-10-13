local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

map("n", "<leader>t", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
map("n", "<leader>fr", ":Telescope lsp_references<CR>", opts)
map("n", "<leader>fh", ":Telescope git_bcommits<CR>", opts)
map("n", "<leader>n", ":set rnu! <CR>", opts)
map("n", "<leader>b", ":GitBlameToggle<CR>", opts)
