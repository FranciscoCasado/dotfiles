return {
  'stevearc/conform.nvim',

  config = function()
    local conform = require('conform')

    conform.setup({
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'ruff' },
      },
      format_on_save = { lsp_format = 'fallback' },
    })
  end,
}
