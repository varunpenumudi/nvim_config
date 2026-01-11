return {
    "neovim/nvim-lspconfig",
    dependencies = {"saghen/blink.nvim"},
    config = function()
        -- lua config
        vim.lsp.config("lua_ls", {
              cmd = { 'lua-language-server' },
              filetypes = { 'lua' },
              root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
              capabilities = require('blink.cmp').get_lsp_capabilities(),
              settings = {
                  Lua = {
                      runtime = {
                          version = 'LuaJIT',
                      },
                      -- 1. Tell the server that 'vim' is a global variable
                      diagnostics = {
                          globals = { 'vim' },
                      },
                      -- 2. (Optional but recommended) Add Neovim runtime files to workspace 
                      workspace = {
                          library = vim.api.nvim_get_runtime_file("", true),
                          checkThirdParty = false, -- Stops the "Do you want to configure environment?" prompt
                      },
                      telemetry = {
                          enable = false,
                      },
                  }
              }
        })

        vim.lsp.enable("clangd", {
             capabilities = require('blink.cmp').get_lsp_capabilities(),
        })

        -- enabling lsp's 
        vim.lsp.enable("lua_ls")
        vim.lsp.enable("clangd")

        -- autocomplete
        vim.diagnostic.config({ virtual_text = true })
    end
}
