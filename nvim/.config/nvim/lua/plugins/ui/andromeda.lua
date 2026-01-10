return {
  'nobbmaestro/nvim-andromeda',
  dependencies = { 'jesseleite/nvim-noirbuddy', 'tjdevries/colorbuddy.nvim' },
  lazy = false,

  config = function()
    require('andromeda').setup({
      preset = 'andromeda',
    })
  end,
  --  enabled = false,
}
