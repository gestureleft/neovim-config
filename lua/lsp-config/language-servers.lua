-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
	-- client.server_capabilities.document_formatting = false
	-- Enable completion triggered by <c-x><c-o>
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
	vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
	vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
	vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
	vim.keymap.set("n", "<space>wl", function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, bufopts)
	vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
	vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
	vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
end

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
local nvim_lsp = require("lspconfig")

local lsp_flags = {
	-- This is the default in Nvim 0.7+
	debounce_text_changes = 150,
}
nvim_lsp["lua_ls"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})
nvim_lsp["tsserver"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
	root_dir = nvim_lsp.util.root_pattern("package.json"),
})
nvim_lsp["rust_analyzer"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
	-- Server-specific settings...
	settings = {
		["rust-analyzer"] = {
			checkOnSave = {
				command = "clippy",
			},
		},
	},
	capabilities = capabilities,
})
nvim_lsp["cmake"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})
nvim_lsp["clangd"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
	cmd = {
		"clangd",
		"--clang-tidy",
	},
})
nvim_lsp.eslint.setup({})
nvim_lsp.jdtls.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})
-- nvim_lsp["vuels"].setup({
-- 	on_attach = on_attach,
-- 	flags = lsp_flags,
-- 	capabilities = capabilities,
-- })
nvim_lsp["volar"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})
nvim_lsp.denols.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	root_dir = nvim_lsp.util.root_pattern("deno.json"),
})
nvim_lsp.tailwindcss.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})
nvim_lsp.pylsp.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})
nvim_lsp.pyre.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})

nvim_lsp.kotlin_language_server.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	capabilities = capabilities,
})
