local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fa", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
map("n", "<leader>fr", ":Telescope lsp_references<CR>", opts)
map("n", "gr", ":Telescope lsp_references<CR>", opts)
map("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
map("n", "gD", ":Telescope lsp_declaration<CR>", opts)
map("n", "<leader>fe", ":Telescope resume<CR>", opts)
map("n", "<leader>fh", ":Telescope git_bcommits<CR>", opts)
map("n", "<leader>fp", ":Telescope git_status<CR>", opts)
map("n", "<leader>n", ":set rnu! <CR>", opts)
map("n", "<leader>b", ":GitBlameToggle<CR>", opts)

map("n", "<leader>tn", ":tabnew<CR>", opts)
map("n", "<leader>tx", ":tabclose<CR>", opts)
map("n", "<C-l>", ":tabnext<CR>", opts)
map("n", "<C-h>", ":tabprev<CR>", opts)

local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end)
vim.keymap.set("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)
vim.keymap.set("n", "<leader>1", function()
	harpoon:list():select(1)
end)

vim.keymap.set("n", "<leader>r", function()
	vim.lsp.buf.rename()
end)

function insertFullPath()
	local filepath = vim.fn.expand("%")
	vim.fn.setreg("+", filepath) -- write to clippoard
end

vim.keymap.set("n", "<leader>pc", insertFullPath, { noremap = true, silent = true })

function startCrumbLanguageSurver()
	vim.lsp.start({
		cmd = { "/Users/harrison.marshall/Developer/crumb/target/debug/crumb-language-server" },
		root_dir = vim.fn.getcwd(), -- Use PWD as project root dir.
	})
end
vim.keymap.set("n", "<leader>t", startCrumbLanguageSurver, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>uh", function()
	vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = "Toggle Inlay Hints" })
