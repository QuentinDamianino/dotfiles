return {
    'airblade/vim-rooter',
    init = function()
        vim.g.rooter_manual_only = 1
    end,
    config = function()
        vim.cmd('Rooter')
    end,
}
