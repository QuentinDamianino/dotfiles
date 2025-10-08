return {
    'Wansmer/treesj',
    keys = {
        { 'gJ', function() require('treesj').join() end },
        { 'gS', function() require('treesj').split() end },
    },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    opts = {
        use_default_keymaps = false,
    },
}

