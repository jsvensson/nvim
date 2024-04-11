local M = {
  "Shatur/neovim-ayu",
  config = function()
    local colors = require("ayu.colors")
    colors.generate()

    require("ayu").setup({
      mirage = false,
      -- Transparency overrides, see https://github.com/Shatur/neovim-ayu#transparency
      overrides = function()
        -- dark mode color adjustments
        local panel_bg = "#212733" -- not a part of Ayu Dark

        -- light mode color adjustments
        if vim.o.background == "light" then
          panel_bg = "#f0f0f0"
        end

        return {
          NormalFloat = { bg = panel_bg }, -- adjust UI popups

          -- adjust line numbers in gutter
          LineNr = { fg = colors.func },
          LineNrAbove = { fg = colors.selection_bg },
          LineNrBelow = { fg = colors.selection_bg },

          WinSeparator = { fg = colors.selection_bg }, -- border between windows
          NeoTreeCursorLine = { bg = colors.selection_bg },
        }
      end,
    })
  end,
}

return M
