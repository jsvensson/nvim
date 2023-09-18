local M = {
  "stevearc/conform.nvim",
}

M.config = function()
  require("conform").setup({
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_fallback = true,
    },
    -- configure specific file formats
    formatters_by_ft = {
      fish = { "fish_indent" },
      go = { "gofumpt" },
      lua = { "stylua" },
      tf = { "terraform_fmt" },
    },
  })
end

return M
