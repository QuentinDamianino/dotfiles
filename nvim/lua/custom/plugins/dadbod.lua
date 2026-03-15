return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
  },
  cmd = { 'DBUI', 'DBUIToggle', 'DBUIAddConnection', 'DBUIFindBuffer' },
  keys = {
    { '<leader>db', '<cmd>DBUIToggle<CR>', desc = '[D]ata[b]ase UI toggle' },
  },
  init = function()
    vim.g.db_ui_use_nerd_fonts = vim.g.have_nerd_font and 1 or 0
    vim.g.db_ui_show_database_icon = vim.g.have_nerd_font and 1 or 0
    vim.g.db_ui_force_echo_notifications = 1
    vim.g.db_ui_win_position = 'left'
    vim.g.db_ui_winwidth = 40

    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'sql', 'mysql', 'plsql' },
      callback = function()
        vim.opt_local.spell = false
      end,
    })
  end,
}
