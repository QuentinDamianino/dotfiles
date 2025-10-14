return {
  'vim-test/vim-test',
  keys = {
    { '<Leader>tn', ':silent TestNearest<CR>', desc = 'Nearest test' },
    { '<Leader>tf', ':silent TestFile<CR>', desc = 'Tests in file' },
    { '<Leader>ts', ':silent TestSuite<CR>', desc = 'Test Suite' },
    { '<Leader>tl', ':silent TestLast<CR>', desc = 'Last test' },
    { '<Leader>tv', ':silent TestVisit<CR>', desc = 'Test visit' },
  },
  dependencies = { 'voldikss/vim-floaterm' },
}
