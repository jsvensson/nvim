local M = {
  "zbirenbaum/copilot.lua",
  event = {
    "InsertEnter",
  },
}

M.config = function()
  require("copilot").setup({
    suggestion = {
      enabled = true,
      auto_trigger = true,
    },
  })
end

return M
