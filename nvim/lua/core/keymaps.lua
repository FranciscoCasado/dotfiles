local keymap = function(mode, lhs, rhs, opts)
  opts = vim.tbl_extend('force', { noremap = true, nowait = true, silent = true }, opts or {})

  vim.keymap.set(mode, lhs, rhs, opts)
end

-- Windows

keymap('n', '<C-[>', '<C-w>w', { desc = 'Move cursor to the previous window' })
keymap('n', '<C-]>', '<C-w>W', { desc = 'Move cursor to the next window' })

keymap('n', '<C-h>', '<C-w>h', { desc = 'Move cursor to the left window' })
keymap('n', '<C-j>', '<C-w>j', { desc = 'Move cursor to the window below' })
keymap('n', '<C-k>', '<C-w>k', { desc = 'Move cursor to the window above' })
keymap('n', '<C-l>', '<C-w>l', { desc = 'Move cursor to the right window' })

keymap('n', ',v', ':vsplit<CR>', { desc = 'Split window vertically' })
keymap('n', ',h', ':split<CR>', { desc = 'Split window horizontally' })

-- Jumping

keymap('n', '<C-o>', '<C-o>zz', { desc = 'Jump backwards and center' })
keymap('n', '<C-i>', '<C-i>zz', { desc = 'Jump forward and center' })

-- Indentation

keymap('v', '<', '<gv', { desc = 'Decrease indent' })
keymap('v', '>', '>gv', { desc = 'Increase indent' })

-- LSP

keymap('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'LSP - Rename' })

-- Write, quit, reload
keymap('n', '<D-s>', ':w<CR>', { desc = 'Write' })
keymap('i', '<D-s>', '<Esc>:w<CR>', { desc = 'Write' })
