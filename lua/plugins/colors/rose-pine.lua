local M = {
  "rose-pine/neovim",
  name = "rose-pine",
}

M.config = function()
  require("rose-pine").setup({
    highlight_groups = {
      LineNr = { fg = "gold" },
      LineNrAbove = { fg = "muted" },
      LineNrBelow = { fg = "muted" },
    },
  })
end

return M
