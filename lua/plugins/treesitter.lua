local M = {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "go",
      "gomod",
      "json",
      "json5",
      "terraform",
    })
  end,
}

return M
