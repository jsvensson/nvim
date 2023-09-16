local M = {
  "ziontee113/icon-picker.nvim",
  dependencies = {
    "stevearc/dressing.nvim",
  },
  config = function()
    local opts = { noremap = true, silent = true }

    vim.keymap.set("i", "<C-s>", "<Cmd>IconPickerInsert emoji nerd_font_v3 alt_font symbols<CR>", opts)
    vim.keymap.set("n", "<C-s>", "<Cmd>IconPickerYank emoji nerd_font_v3 alt_font symbols<CR>", opts)

    require("icon-picker").setup({
      disable_legacy_commands = true,
    })
  end,
}

return M
