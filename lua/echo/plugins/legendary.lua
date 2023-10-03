local M = {
  "mrjones2014/legendary.nvim",
  version = "v2.*",
  -- since legendary.nvim handles all your keymaps/commands,
  -- its recommended to load legendary.nvim before other plugins
  priority = 10000,
  lazy = false,
  -- sqlite is only needed if you want to use frecency sorting
  -- dependencies = { 'kkharji/sqlite.lua' }
}

M.opts = {
  lazy_nvim = {
    auto_register = true,
  },
  which_key = {
    auto_register = true,
  },
}

M.config = function()
  require("legendary").setup({
    keymaps = {
      -- Show Legendary itself
      { "<C-p>", ":Legendary<CR>", description = "Show command palette" },
    },
  })
end

return M
