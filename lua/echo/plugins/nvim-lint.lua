local M = {
  "mfussenegger/nvim-lint",
  event = {
    "BufReadPre",
    "BufNewFile",
  },
}

M.config = function()
  local lint = require("lint")

  lint.linters_by_ft = {
    go = { "revive" },
  }
end

return M
