-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- default to dark mode for themes that have light/dark variants
opt.background = "dark"

-- absolute number on current line?
opt.number = true

-- highlight current line?
opt.cursorline = false

-- Don't cut/copy to OS clipboard with native vim commands
opt.clipboard = ""
