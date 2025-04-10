-- Telescope
vim.keymap.set("n", "<Leader>ff", ":Telescope find_files<cr>")
vim.keymap.set("n", "<Leader>fg", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<Leader>fp", ":Telescope git_status<cr>")
vim.keymap.set("n", "<Leader>fe", ":Telescope resume<cr>")
vim.keymap.set("n", "<Leader>fb", ":Telescope buffers<cr>")
-- vim.keymap.set("n", "gr", ":Telescope lsp_references<cr>")
-- vim.keymap.set("n", "gd", ":Telescope lsp_definitions<cr>")

-- Inlay hints
vim.keymap.set("n", "<Leader>i", function()
  vim.print("Hello")
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ 0 }), { 0 })
end)

-- LSP Actions
-- vim.keymap.set("n", "<Leader>ca", ":lua vim.lsp.buf.code_action()<cr>")
vim.keymap.set("n", "grd", ":lua vim.lsp.buf.definition()<cr>")

-- Tabs
vim.keymap.set("n", "<C-l>", ":tabnext<cr>")
vim.keymap.set("n", "<C-h>", ":tabprevious<cr>")

-- Diagnostics
vim.keymap.set("n", "<Leader>k", ":lua vim.diagnostic.open_float()<cr>")
