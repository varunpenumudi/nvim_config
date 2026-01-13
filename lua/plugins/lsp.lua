return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "saghen/blink.nvim",                 -- autocomplete
        {"folke/lazydev.nvim", opts={}},     -- detect vim as global
    },
    config = function()
        -- autocomplete
        vim.lsp.config("*", {
             capabilities = require('blink.cmp').get_lsp_capabilities(),
        })

        -- enabling lsp's 
        vim.lsp.enable("lua_ls")
        vim.lsp.enable("clangd")
        vim.lsp.enable("neocmake")

        -- diagnostic 
        vim.diagnostic.config({ virtual_text = true })
    end
}
