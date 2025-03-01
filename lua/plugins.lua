return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  {
    "saghen/blink.cmp",
    dependencies = "rafamadriz/friendly-snippets",
    version = "v0.*",
    opts = {
      keymap = { preset = "default" },
      appearance = { use_nvim_cmp_as_default = true, nerd_font_variant = "mono" },
      signature = { enabled = true },
      cmdline = { completion = { menu = { auto_show = true } } },
    },
  },

  {
    "neovim/nvim-lspconfig",
  },

  { "elentok/format-on-save.nvim" },

  { "lewis6991/gitsigns.nvim" },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
