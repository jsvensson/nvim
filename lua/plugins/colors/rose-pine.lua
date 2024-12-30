local M = {
  "rose-pine/neovim",
  name = "rose-pine",
}

M.config = function()
  require("rose-pine").setup({
    highlight_groups = {
      -- Change background colors so they're transparent in term
      Normal = { bg = "NONE" },
      NormalNC = { bg = "NONE" },

      LineNr = { fg = "gold" },
      LineNrAbove = { fg = "muted" },
      LineNrBelow = { fg = "muted" },
    },
  })
end

return M
