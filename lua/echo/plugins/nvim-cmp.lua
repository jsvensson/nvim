return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    -- completion engine
    "hrsh7th/cmp-vsnip",
    "hrsh7th/vim-vsnip",
    -- sources
    "hrsh7th/cmp-buffer", -- source for text in buffer
    "hrsh7th/cmp-path", -- source for file system paths
    "hrsh7th/cmp-cmdline", -- source for command line
    "hrsh7th/cmp-buffer", -- source for text in buffer
    "hrsh7th/cmp-nvim-lsp", -- source for nvim lsp
    "rafamadriz/friendly-snippets", -- snippet collection
  },
  config = function()
    local cmp = require("cmp")

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview,noselect",
      },
      snippet = { -- configure how nvim-cmp interacts with snippet engine
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-c>"] = cmp.mapping.complete(), -- show suggestions
        ["<C-e>"] = cmp.mapping.abort(), -- close completion window
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" }, -- text within current buffer
        { name = "path" }, -- file system paths
        { name = "cmdline" }, -- command line
      }),
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
    })

    -- Use cmdline & path source for `:`
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "path" },
      }, {
        { name = "cmdline" },
      }),
    })

    -- Use buffer source for `/` and `?`
    cmp.setup.cmdline({ "/", "?" }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "buffer" },
      },
    })
  end,
}
