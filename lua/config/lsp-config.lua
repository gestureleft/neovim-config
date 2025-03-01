local lspconfig = require("lspconfig")

local capabilities = require("blink.cmp").get_lsp_capabilities()

lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
})

lspconfig.ts_ls.setup({
  capabilities = capabilities,
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = "/Users/harrison.marshall/.nvm/versions/node/v20.11.0/lib/node_modules/@vue/typescript-plugin",
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
lspconfig.volar.setup({
  capabilities = capabilities,
  init_options = {
    typescript = {
      tsdk = "/Users/harrison.marshall/.nvm/versions/node/v20.11.0/lib/node_modules/typescript/lib",
    },
  },
})
lspconfig.eslint.setup({
  capabilities = capabilities,
})
lspconfig.stylelint_lsp.setup({
  capabilities = capabilities,
})
lspconfig.css_variables.setup({
  capabilities = capabilities,
})
lspconfig.cssmodules_ls.setup({
  capabilities = capabilities,
})

lspconfig.lua_ls.setup({
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
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = "LuaJIT",
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
          -- Depending on the usage, you might want to add additional paths here.
          -- "${3rd}/luv/library"
          -- "${3rd}/busted/library",
        },
        -- or pull in all of 'runtimepath'. NOTE: this is a lot slower and will cause issues when working on your own configuration (see https://github.com/neovim/nvim-lspconfig/issues/3189)
        -- library = vim.api.nvim_get_runtime_file("", true)
      },
    })
  end,
  settings = {
    Lua = {},
  },
})
