-- Telescope
-- vim.keymap.set("n", "<Leader>ff", ":Telescope find_files<cr>")
-- vim.keymap.set("n", "<Leader>fg", ":Telescope live_grep<cr>")
-- vim.keymap.set("n", "<Leader>fp", ":Telescope git_status<cr>")
-- vim.keymap.set("n", "<Leader>fe", ":Telescope resume<cr>")
-- vim.keymap.set("n", "<Leader>fb", ":Telescope buffers<cr>")
-- vim.keymap.set("n", "gr", ":Telescope lsp_references<cr>")
-- vim.keymap.set("n", "gd", ":Telescope lsp_definitions<cr>")

-- FzfLua
local fzf_lua = require("fzf-lua")

vim.keymap.set("n", "<Leader>ff", function()
  fzf_lua.files()
end)
vim.keymap.set("n", "<Leader>fg", function()
  fzf_lua.grep()
end)
vim.keymap.set("n", "<Leader>fe", function()
  fzf_lua.resume()
end)
vim.keymap.set("n", "<Leader>fb", function()
  fzf_lua.buffers()
end)
vim.keymap.set("n", "<Leader>fp", function()
  fzf_lua.git_status()
end)
vim.keymap.set("v", "<Leader>fw", function()
  fzf_lua.grep_cword()
end)

-- Create terminal to the right
vim.keymap.set("n", "<Leader>t", ":OpenTerminalLeft<cr>")

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
