require("settings")
require("mappings")
require("packer-config")
require("colorschemes-config")
require("nvim-tree-config")
require("lsp-config.language-servers")
require("lsp-config.nvim-cmp")
require("lsp-config.null-ls")
require("telescope-config")
require("gitblame-config")
require("lorem-config")

-- From https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#denols
vim.g.markdown_fenced_languages = {
	"ts=typescript",
}
