return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = false,

  opts = {
    lsp_file_methods = { enabled = true, timeour_ms = 2000, autosave_changes = true },
    float = {
      preview_split = 'right',
    },

    use_default_keymaps = false,
    keymaps = {
      ['<CR>'] = 'actions.select',

      ['h'] = 'actions.parent',
      ['l'] = 'actions.select',
      ['<D-l>'] = 'actions.preview',

      ['<Esc>'] = 'actions.close',
      ['q'] = 'actions.close',

      ['<D-.>'] = 'actions.toggle_hidden',
      ['<D-/>'] = 'actions.toggle_trash',
    },
  },

  keys = {
    {
      '<D-S-e>',
      function()
        if vim.bo.filetype ~= 'oil' then
          require('oil').open_float()
        end
      end,
      desc = 'Oil - Open',
    },
  },
}
