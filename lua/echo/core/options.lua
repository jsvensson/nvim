local opt = vim.opt

-- Enable color mode for color schemes
opt.termguicolors = true

-- don't show mode in default line
opt.showmode = false

-- line numbers
opt.relativenumber = true
opt.number = false -- absolute line number on current line

-- always show space for diagnostics in gutter
opt.signcolumn = "yes"

-- hide tildes after EOF, line numbers provide that info
opt.fillchars = { eob = " " }

-- tabs/indentation
opt.tabstop = 2

-- line wrapping
opt.wrap = false

-- turn off swapfile
opt.swapfile = false

-- disable horizontal mouse scrolling
opt.mousescroll = "ver:1,hor:0"
