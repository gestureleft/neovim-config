local format_on_save = require("format-on-save")
local formatters = require("format-on-save.formatters")

format_on_save.setup({
  exclude_path_patterns = {
    "/node_modules/",
    ".local/share/nvim/lazy",
  },
  formatter_by_ft = {
    css = formatters.lsp,
    html = formatters.lsp,
    javascript = formatters.lsp,
    json = formatters.prettierd,
    lua = formatters.stylua,
    rust = formatters.lsp,
    scss = formatters.lsp,
    typescript = formatters.prettierd,
    vue = formatters.prettierd,
    typescriptreact = formatters.prettierd,
    yaml = formatters.lsp,
  },
})
