-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_augroup("OpenTofu", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
  group = "OpenTofu",
  pattern = "*.tf",
  callback = function()
    os.execute("tofu fmt --list=false")
    vim.cmd("edit!")
  end,
})
