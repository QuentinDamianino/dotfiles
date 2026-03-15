return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      columns = { 'icon' },
      view_options = {
        show_hidden = true,
      },
      keymaps = {
        ['q'] = 'actions.close',
        ['<C-r>'] = 'actions.refresh',
      },
    }

    vim.keymap.set('n', '-', '<cmd>Oil<CR>', { desc = 'Open parent directory' })
    vim.keymap.set('n', '<leader>pv', '<cmd>Oil<CR>', { desc = 'Open parent directory (Oil)' })
  end,
}
