return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'nvim-telescope/telescope-live-grep-args.nvim',
  },
  config = function()
    local telescope = require('telescope')

    telescope.setup({
      extensions = {
        live_grep_args = {
          file_ignore_patterns = {
            '^.git/',
            '%.lock$',
            '*/__pycache__/',
          },
        },
      },
    })
    telescope.load_extension('fzf')
    telescope.load_extension('live_grep_args')
  end,
  keys = function()
    return {
      { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find Files' },
      { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Grep Files' },
    }
  end,
}
