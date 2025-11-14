local M = {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      "gofumpt",
      "goimports",
      "gopls",
      "revive",
      "stylua",
    },
  },
}

return M
