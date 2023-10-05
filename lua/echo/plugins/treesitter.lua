local M = {
  "nvim-treesitter/nvim-treesitter",
  event = {
    "BufReadPre",
    "BufNewFile",
  },
  build = ":TSUpdate",
  dependencies = { "RRethy/nvim-treesitter-textsubjects" },
}

M.opts = {
  ensure_installed = {
    "dockerfile",
    "fish",
    "gitignore",
    "go",
    "gomod",
    "gosum",
    "json",
    "json5",
    "lua",
    "markdown",
    "terraform",
    "yaml",
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<Tab>",
      node_incremental = "<Tab>",
      node_decremental = "<S-Tab>",
      scope_incremental = false,
    },
  },
}

M.config = function(_, opts)
  require("nvim-treesitter.configs").setup(opts)
end

return M
