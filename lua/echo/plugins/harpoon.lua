local M = {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = true,
}

M.keys = {
  { "<Leader>hm", "<Cmd>lua require('harpoon.mark').add_file()<CR>", desc = "Mark file with harpoon" },
  { "<Leader>hn", "<Cmd>lua require('harpoon.ui').nav_next()<CR>",   desc = "Go to next harpoon mark" },
  { "<Leader>hp", "<Cmd>lua require('harpoon.ui').nav_prev()<CR>",   desc = "Go to previous harpoon mark" },
  { "<Leader>ha", "<Cmd>Telescope harpoon marks<CR>",                desc = "Show harpoon marks" },
}

return M
