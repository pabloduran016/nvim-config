return {
    'ThePrimeagen/harpoon',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        require('harpoon').setup {}

        local mark = require('harpoon.mark')
        local ui = require('harpoon.ui')

        vim.keymap.set('n', '<leader>ha', mark.add_file, { desc = '[H]arpoon [A]dd file' })
        vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, { desc = "Toogle harpoon menu" })

        vim.keymap.set('n', '<C-h>', function() ui.nav_file(1) end, { desc = 'Harpoon file 1' })
        vim.keymap.set('n', '<C-t>', function() ui.nav_file(2) end, { desc = 'Harpoon file 2' })
        vim.keymap.set('n', '<C-n>', function() ui.nav_file(3) end, { desc = 'Harpoon file 3' })
        vim.keymap.set('n', '<C-s>', function() ui.nav_file(4) end, { desc = 'Harpoon file 4' })
        vim.keymap.set('n', '<C-q>', function() ui.nav_file(5) end, { desc = 'Harpoon file 5' })
    end,
}

