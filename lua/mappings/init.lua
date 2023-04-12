local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

map("n", "<leader>t", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
map("n", "<leader>fr", ":Telescope lsp_references<CR>", opts)
map("n", "gr", ":Telescope lsp_references<CR>", opts)
map("n", "<leader>fd", ":Telescope lsp_definitions<CR>", opts)
map("n", "gd", ":Telescope lsp_definitions<CR>", opts)
map("n", "gD", ":Telescope lsp_declaration<CR>", opts)
map("n", "<leader>fh", ":Telescope git_bcommits<CR>", opts)
map("n", "<leader>n", ":set rnu! <CR>", opts)
map("n", "<leader>b", ":GitBlameToggle<CR>", opts)

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>1", function()
	ui.nav_file(1)
end)

vim.keymap.set("n", "<leader>2", function()
	ui.nav_file(2)
end)

vim.keymap.set("n", "<leader>3", function()
	ui.nav_file(3)
end)

vim.keymap.set("n", "<leader>4", function()
	ui.nav_file(4)
end)

map("n", "<C-Tab>", ":bprev<CR>", opts)
map("n", "<C-S-Tab>", ":bnext<CR>", opts)
