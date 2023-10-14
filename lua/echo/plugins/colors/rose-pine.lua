local M = {
  "rose-pine/neovim",
  name = "rose-pine",
}

M.config = function()
  vim.cmd([[colorscheme rose-pine-main]])
end

return M
