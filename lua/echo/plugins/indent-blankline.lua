local M = {
  "lukas-reineke/indent-blankline.nvim",
  event = "BufReadPre",
  config = function()
    require("indent_blankline").setup({
      char = '┊',
      show_current_context = true, -- highlight the current context
      show_current_context_start = false, -- underline on starting line for context
      indent_blankline_max_indent_increase = 1, -- don't show char in multiline strings
      indent_blankline_show_trailing_blankline_indent = false, -- no char on empty lines in current context
    })
  end,
}

return M
