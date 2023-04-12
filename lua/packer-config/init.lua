local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("EdenEast/nightfox.nvim")
	use("kyazdani42/nvim-tree.lua")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/nvim-cmp") -- Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- Snippets plugin
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" }, { "BurntSushi/ripgrep" } },
	})
	use("jose-elias-alvarez/null-ls.nvim")
	use("airblade/vim-gitgutter")
	use({ "~/dev/jakt/editors/vim", as = "Jakt" })
	use("digitaltoad/vim-pug")
	use("storyn26383/vim-vue")
	use("f-person/git-blame.nvim")
	use("ThePrimeagen/harpoon")
	use("nvim-treesitter/nvim-treesitter")
	use({ "derektata/lorem.nvim" })
	use({ "mg979/vim-visual-multi" })

	if packer_bootstrap then
		require("packer").sync()
	end
end)
