return {
    'akinsho/bufferline.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    after = 'onedark.nvim',
    config = function()
        require('bufferline').setup()
    end,
}
