local M = {
  'ziontee113/icon-picker.nvim',
  dependencies = {
    'stevearc/dressing.nvim',
  },
  config = function()
    local opts = { noremap = true, silent = true }

    vim.keymap.set('i', '<C-i>', '<Cmd>IconPickerInsert<CR>', opts)

    require('icon-picker').setup({
      disable_legacy_commands = true,
    })
  end,
}

return M
