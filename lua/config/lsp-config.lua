local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.lsp.config("ts_ls", {
  capabilities = capabilities,
  init_options = {
    plugins = {
      {
        name = "@css-modules-kit/ts-plugin",
        location = "/Users/harrison.marshall/Library/pnpm/global/5/node_modules/@css-modules-kit/ts-plugin",
        languages = { "css" },
      },
      {
        name = "@vue/typescript-plugin",
        location = "/Users/harrison.marshall/Library/pnpm/global/5/node_modules/@vue/language-server",
        languages = { "javascript", "typescript", "vue", "typescriptreact" },
      },
    },
  },
  filetypes = {
    "javascript",
    "typescript",
    "vue",
    "typescriptreact",
  },
})
-- vim.lsp.enable("ts_ls")

vim.lsp.config("eslint", {
  capabilities = capabilities,
  root_dir = require("lspconfig.util").root_pattern("eslint.config.js", "package.json", ".git"),
})
vim.lsp.enable("eslint")

vim.lsp.config("oxlint", {
  capabilities = capabilities,
})
vim.lsp.enable("oxlint")

vim.lsp.config("vue_ls", {
  capabilities = capabilities,
  init_options = {
    typescript = {
      tsdk = "/Users/harrison.marshall/Library/pnpm/global/5/node_modules/typescript/lib",
    },
  },
})
vim.lsp.enable("vue_ls")

local vue_language_server_path = "/Users/harrison.marshall/Library/pnpm/global/5/node_modules/@vue/language-server"

local vue_plugin = {
  name = "@vue/typescript-plugin",
  location = vue_language_server_path,
  languages = { "vue" },
  configNamespace = "typescript",
}

vim.lsp.config("vtsls", {
  capabilities = capabilities,
  settings = {
    vtsls = {
      tsserver = {
        globalPlugins = { vue_plugin },
      },
    },
  },
  filetypes = {
    "javascript",
    "typescript",
    "vue",
    "typescriptreact",
  },
})
vim.lsp.enable("vtsls")

vim.lsp.config("stylelint_lsp", {
  capabilities = capabilities,
})
vim.lsp.enable("stylelint_lsp")

vim.lsp.config("css_variables", {
  capabilities = capabilities,
})
vim.lsp.enable("css_variables")

vim.lsp.config("cssmodules_ls", {
  capabilities = capabilities,
})
vim.lsp.enable("cssmodules_ls")

vim.lsp.config("lua_ls", {
  capabilities = capabilities,
  on_init = function(client)
    if client.workspace_folders then
      local path = client.workspace_folders[1].name
      if vim.uv.fs_stat(path .. "/.luarc.json") or vim.uv.fs_stat(path .. "/.luarc.jsonc") then
        return
      end
    end

    client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
      runtime = {
        version = "LuaJIT",
      },
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
        },
      },
    })
  end,
  settings = {
    Lua = {},
  },
})
vim.lsp.enable("lua_ls")

vim.lsp.config("basedpyright", {
  capabilities = capabilities,
})
vim.lsp.enable("basedpyright")

vim.lsp.config("rust_analyzer", {
  capabilities = capabilities,
})
vim.lsp.enable("rust_analyzer")

vim.lsp.enable("jdtls")
