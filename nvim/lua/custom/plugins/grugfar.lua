return {
  'MagicDuck/grug-far.nvim',
  cmd = 'GrugFar',
  keys = {
    {
      '<leader>sr',
      function()
        require('grug-far').open { transient = true }
      end,
      desc = '[S]earch and [R]eplace (grug-far)',
    },
    {
      '<leader>sr',
      function()
        require('grug-far').open { transient = true, prefills = { search = vim.fn.expand '<cword>' } }
      end,
      mode = 'v',
      desc = '[S]earch and [R]eplace current word',
    },
  },
  opts = {
    headerMaxWidth = 80,
  },
}
