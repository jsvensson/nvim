local M = {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
}

M.keys = {
  -- unbind LazyVim recent file pickers, using frecency instead
  { "<Leader>fr", false },
  { "<Leader>fR", false },
}

M.config = function()
  local telescope = require("telescope")
  local actions = require("telescope.actions")

  telescope.setup({
    defaults = {
      mappings = {
        i = {
          ["<C-h>"] = "which_key",
          ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        },
      },
    },
    pickers = {
      buffers = {
        mappings = {
          i = {
            ["<C-d>"] = actions.delete_buffer,
          },
        },
      },
    },
    extensions = {
      frecency = {
        show_scores = true,
      },
    },
  })

  telescope.load_extension("fzf")
end

return M
