return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require'nvim-treesitter.configs'.setup{
            ensure_installed = { "cpp", "c", "python", "rust", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
            sync_install = false,

            -- automatically install missing parsers when entering buffer
            -- recommendation: set to false if you don't have `tree-sitter` cli installed locally
            auto_install = true,

            highlight = {
                enable = true,
                -- function for more flexibility, e.g. to disable slow treesitter highlight for large files
                disable = function(lang, buf)
                    local max_filesize = 100 * 1024 -- 100 KB
                    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                    if ok and stats and stats.size > max_filesize then
                        return true
                    end
                end,

                -- setting this to true will run `:h syntax` and tree-sitter at the same time.
                additional_vim_regex_highlighting = false,
            },

            -- ignore
            ignore_install = {},
            modules = {},
        }
    end
}
