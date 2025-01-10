return {
  'nvim-treesitter/nvim-treesitter',

  config = function()
    require('nvimt-treesitter.configs').setup({
      ensure_installed = 'all',
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
