return {
  'stevearc/conform.nvim',

  config = function()
    local conform = require('conform')

    conform.setup({
      formatters_by_ft = {
        go = { 'gofmt' },
        json = { 'prettierd' },
        lua = { 'stylua' },
        python = { 'ruff_fix', 'ruff_format', 'ruff_organize_imports' },
      },
      format_on_save = { lsp_format = 'fallback' },
    })
  end,
}
