vim.wo.relativenumber = true
vim.wo.number = true

-- Go to new window when splitting
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.cmd("filetype plugin on")

vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.opt_local.number = true
    vim.opt_local.relativenumber = true
  end,
})

vim.api.nvim_create_user_command("OpenTerminalLeft", function()
  vim.cmd("vsplit")
  vim.cmd("terminal")
end, {})

vim.opt.cursorline = true

-- Case insensitive '/' searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Custom Macros --
local esc = vim.api.nvim_replace_termcodes("<Esc>", true, true, true)

vim.fn.setreg("l", "yoconsole.debug('" .. esc .. "pa:', " .. esc .. "pa)" .. esc)

-- Custom User Commands --
vim.api.nvim_create_user_command("CopyRelPath", "call setreg('+', expand('%'))", {})

--------------------
require("config.lazy")
require("config.colourscheme")
require("config.mappings")
require("config.lsp-config")
require("config.format-on-save")
require("config.gitsigns")
-- require("config.lualine")
-- require("config.noice")
