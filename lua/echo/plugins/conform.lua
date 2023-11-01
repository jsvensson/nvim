local M = {
  "stevearc/conform.nvim",
  version = "v4.*",
  event = {
    "BufReadPre",
    "BufNewFile",
  },
}

M.config = function()
  local conform = require("conform")

  local on_save = {
    async = false,
    timeout_ms = 500,
    lsp_fallback = true,
  }

  conform.setup({
    format_on_save = on_save,
    -- configure specific file formats
    formatters_by_ft = {
      fish = { "fish_indent" },
      go = { "goimports", "gofumpt" },
      lua = { "stylua" },
      markdown = { "prettier" },
      terraform = { "terraform_fmt" },
      yaml = { "yamlfmt" },
    },
  })

  vim.keymap.set({ "n", "v" }, "<Leader>cf", function()
    conform.format(on_save)
  end, { desc = "Format code" })
end

return M
