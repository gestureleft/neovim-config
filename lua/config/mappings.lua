-- Telescope
vim.keymap.set("n", "<Leader>ff", ":Telescope find_files<cr>")
vim.keymap.set("n", "<Leader>fg", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<Leader>fp", ":Telescope git_status<cr>")
vim.keymap.set("n", "<Leader>fe", ":Telescope resume<cr>")
vim.keymap.set("n", "<Leader>fb", ":Telescope buffers<cr>")
vim.keymap.set("n", "gr", ":Telescope lsp_references<cr>")

-- Inlay hints
vim.keymap.set("n", "<leader>i", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ 0 }), { 0 })
end)

-- Code Actions
vim.keymap.set("n", "<Leader>ca", ":lua vim.lsp.buf.code_action()<cr>")
