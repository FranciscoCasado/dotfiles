return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    'nvim-telescope/telescope.nvim',
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({})

    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Open harpoon window" })
    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
    vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<C-3>", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<C-4>", function() harpoon:list():select(4) end)

    local send_selection_to_harpoon = function(prompt_bufnr)
      local actions = require('telescope.actions')
      local action_state = require('telescope.actions.state')
      local picker = action_state.get_current_picker(prompt_bufnr)
      local selections = picker:get_multi_selection()

      if #selections > 0 then
        for _, entry in ipairs(selections) do
          harpoon:list():add({ value = entry.filename or entry.value })
        end
      else
        local entry = action_state.get_selected_entry()
        if entry then
          harpoon:list():add({ value = entry.filename or entry.value })
        end
      end

      actions.close(prompt_bufnr)
    end

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "TelescopePrompt",
      callback = function(event)
        local opts = { buffer = event.buf }
        vim.keymap.set("i", "<C-a>", function()
          send_selection_to_harpoon(vim.api.nvim_get_current_buf())
        end, opts)
        vim.keymap.set("n", "<C-a>", function()
          send_selection_to_harpoon(vim.api.nvim_get_current_buf())
        end, opts)
      end,
    })

  end
}
