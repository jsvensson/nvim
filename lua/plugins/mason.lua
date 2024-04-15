local M = {
  "williamboman/mason.nvim",
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
