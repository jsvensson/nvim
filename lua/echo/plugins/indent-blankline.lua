local M = {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = "BufRead",
  config = function()
    -- for unclear reasons this won't work if applied inside the setup
    vim.g.indent_blankline_show_trailing_blankline_indent = false

    require("ibl").setup({
      char = "┊",
      show_current_context = true, -- highlight the current context
      show_current_context_start = false, -- underline on starting line for context
      indent_blankline_max_indent_increase = 1, -- don't show char in multiline strings
    })
  end,
}

return M
