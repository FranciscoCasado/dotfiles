return {
  'stevearc/conform.nvim',

  config = function()
    local conform = require('conform')

    conform.setup({
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'ruff_fix', 'ruff_format', 'ruff_organize_imports' },
        json = { 'prettierd' },
      },
      format_on_save = { lsp_format = 'fallback' },
    })
  end,
}
