return {
  'neovim/nvim-lspconfig',
  dependencies = { 'RRethy/vim-illuminate' },

  config = function()
    vim.diagnostic.config({
      virtual_text = true,
    })

    -- Lua
    require('lspconfig').lua_ls.setup({
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
    require('lspconfig').ruff.setup({
      init_options = {
        settings = { enabled = true },
      },
    })

    -- Ruby
    require('lspconfig').ruby_lsp.setup({
      init_options = {
        formatter = 'standard',
        linters = { 'standard' },
      },
    })

    -- TOML
    require('lspconfig').taplo.setup({})
  end,
}
