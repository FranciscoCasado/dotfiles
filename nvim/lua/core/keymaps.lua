local keymap = function(mode, lhs, rhs, opts)
  opts = vim.tbl_extend('force', { noremap = true, nowait = true, silent = true }, opts or {})

  vim.keymap.set(mode, lhs, rhs, opts)
end

-- Indentation

keymap('v', '<', '<gv', { desc = 'Decrease indent' })
keymap('v', '>', '>gv', { desc = 'Increase indent' })

-- LSP

keymap('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'LSP - Rename' })

-- Write, quit, reload
keymap('n', '<D-s>', ':w<CR>', { desc = 'Write' })
