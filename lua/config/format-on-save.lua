local format_on_save = require("format-on-save")
local formatters = require("format-on-save.formatters")

format_on_save.setup({
  exclude_path_patterns = {
    "/node_modules/",
    ".local/share/nvim/lazy",
  },
  formatter_by_ft = {
    lua = formatters.stylua,
    rust = formatters.lsp,
    scss = formatters.lsp,
    css = formatters.lsp,
    html = formatters.lsp,
    javascript = formatters.lsp,
    json = formatters.lsp,
    typescript = formatters.lsp,
    vue = formatters.lsp,
    typescriptreact = formatters.lsp,
    yaml = formatters.lsp,
  },
})
