local M = {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local colors = require("ayu.colors")
    colors.generate()

    -- configure lazy pending update count
    local lazy_status = require("lazy.status")

    lualine.setup({
      extensions = {
        "neo-tree",
      },
      sections = {
        lualine_a = {
          "mode",
        },
        lualine_b = {
          { "branch", icon = "" },
          "diff",
          "diagnostics",
        },
        lualine_c = {
          "filename",
        },
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = colors.keyword },
          },
          -- { "encoding" },
          -- { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}

return M
