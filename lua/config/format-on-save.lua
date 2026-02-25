local format_on_save = require("format-on-save")
local formatters = require("format-on-save.formatters")

local oxfmt = formatters.shell({
  cmd = { "mise", "exec", "--", "oxfmt", "--stdin-filepath", "%" },
})

format_on_save.setup({
  exclude_path_patterns = {
    "/node_modules/",
    ".local/share/nvim/lazy",
  },
  formatter_by_ft = {
    lua = formatters.stylua,
    rust = formatters.lsp,
    scss = oxfmt,
    css = oxfmt,
    html = oxfmt,
    javascript = oxfmt,
    json = oxfmt,
    typescript = oxfmt,
    vue = oxfmt,
    typescriptreact = oxfmt,
    yaml = oxfmt,
  },
})
