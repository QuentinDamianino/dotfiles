return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    branch = 'master',
    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = { 'c', 'lua', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc', 'php', 'phpdoc', 'javascript', 'typescript', 'css', 'html', 'blade', 'twig', 'yaml', 'json' },
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = { 'ruby' },
        },
        indent = { enable = true, disable = { 'ruby' } },
      })
    end,
}
