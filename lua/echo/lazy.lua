-- Set up lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load all the plugins
require("lazy").setup({
  { import = "echo.plugins" },
  { import = "echo.plugins.lsp" },
  { import = "echo.plugins.colors" },
}, {
  install = {},
  change_detection = {
    notify = false,
  },
  checker = {
    enabled = true,
    notify = false,
  },
})
