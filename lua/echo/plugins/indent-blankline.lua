local M = {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = "BufRead",
  config = function()
    require("ibl").setup({
      indent = {
        char = "┊",
      },
      scope = {
        enabled = true,
      },
    })
  end,
}

return M
