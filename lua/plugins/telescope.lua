return {
    'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pv', function ()
            builtin.find_files({
                find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" }
            })
        end, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>pg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>ph', builtin.help_tags, { desc = 'telescope help tags' })
    end
}
