return {
  'hrsh7th/nvim-cmp',
  version = false,
  dependencies = { 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path' },
  event = 'InsertEnter',

  config = function()
    local cmp = require('cmp')

    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-k>'] = cmp.mapping.select_prev_item(),

        ['<Tab>'] = cmp.mapping.confirm({ select = true }),
      }),

      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
      }),
      completion = { completeopt = 'menu,menuone,noinsert' },
    })
  end,
}
