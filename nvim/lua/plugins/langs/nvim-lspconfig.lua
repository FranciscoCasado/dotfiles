return {
  'neovim/nvim-lspconfig',
  dependencies = { 'RRethy/vim-illuminate' },

  config = function()
    vim.diagnostic.config({
      virtual_text = true,
    })

    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- Golang
    vim.lsp.config('gopls', {
      capabilities = capabilities,

      settings = {
        gopls = {
          staticcheck = true,
          gofumpt = false,
        },
      },
    })

    -- JSON
    vim.lsp.config('jsonls', {})

    -- Lua
    vim.lsp.config('lua_ls', {
      capabilities = capabilities,

      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
        },
      },
    })

    -- Python
    vim.lsp.config('mypy', {
      capabilities = capabilities,

      filetypes = { 'python' },
    })

    -- Ruby
    vim.lsp.config('ruby_lsp', {
      init_options = {
        formatter = 'standard',
        linters = { 'standard' },
      },
    })

    -- TOML
    vim.lsp.config('taplo', {})
  end,
}
