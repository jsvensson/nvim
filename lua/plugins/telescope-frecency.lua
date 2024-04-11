local M = {
  "nvim-telescope/telescope-frecency.nvim",
}

M.config = function()
  require("telescope").load_extension("frecency")
end

M.keys = {
  { "<Leader>fr", "<Cmd>Telescope frecency workspace=CWD<CR>", mode = { "n", "v" }, desc = "Files by frecency in cwd" },
  { "<Leader>fR", "<Cmd>Telescope frecency<CR>", mode = { "n", "v" }, desc = "Files by frecency" },
}

return M
