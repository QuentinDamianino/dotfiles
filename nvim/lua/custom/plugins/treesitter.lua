return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  branch = 'master',
  dependencies = 'nvim-treesitter/nvim-treesitter-textobjects',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { 'c', 'lua', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc', 'php', 'phpdoc', 'javascript', 'typescript', 'css', 'html', 'blade', 'twig', 'yaml', 'json' },
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ['if'] = '@function.inner',
            ['af'] = '@function.outer',
            ['ia'] = '@parameter.inner',
            ['aa'] = '@parameter.outer',
          },
        },
      },
    })

    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'php',
      callback = function()
        vim.bo.commentstring = '// %s'
      end,
    })

    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'blade',
      callback = function()
        vim.bo.commentstring = '{{-- %s --}}'
      end,
    })

    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'twig',
      callback = function()
        vim.bo.commentstring = '{# %s #}'
      end,
    })
  end,
}
