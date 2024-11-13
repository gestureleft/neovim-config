vim.wo.relativenumber = true
vim.wo.number = true

-- Go to new window when splitting
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.cursorline = true

-- Case insensitive '/' searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

require("config.lazy")
require("config.colourscheme")
require("config.mappings")
require("config.lsp-config")
require("config.mini-completion")
require("config.format-on-save")
require("config.gitsigns")
require("config.lualine")
