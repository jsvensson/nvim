local M = {
  "nvim-telescope/telescope-frecency.nvim",
  dependencies = { "kkharji/sqlite.lua" },
  config = function()
    require("telescope").load_extension("frecency")
  end,
}

M.keys = {
  { "<Leader>fr", "<Cmd>Telescope frecency workspace=CWD<CR>", mode = { "n", "v" }, desc = "Files by frecency in cwd" },
}

return M
