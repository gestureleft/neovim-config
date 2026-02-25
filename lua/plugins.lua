return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  -- {
  --   "nvim-telescope/telescope.nvim",
  --   tag = "0.1.8",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  -- },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      previewers = {
        git_diff = {
          cmd_deleted = "git diff --no-ext-diff --color HEAD --",
          cmd_modified = "git diff --no-ext-diff --color HEAD",
          cmd_untracked = "git diff --no-ext-diff --color --no-index /dev/null",
        },
      },
    },
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

  {
    "github/copilot.vim",
  },

  -- {
  --   "folke/sidekick.nvim",
  -- },

  -- {
  --   "olimorris/codecompanion.nvim",
  --   config = true,
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-treesitter/nvim-treesitter",
  --   },
  -- },
  {
    "mfussenegger/nvim-jdtls",
    dependencies = { "mfussenegger/nvim-dap" },
  },
  {
    "ellisonleao/gruvbox.nvim",
  },
}
