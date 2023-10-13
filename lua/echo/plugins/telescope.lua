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
  -- file navigation
  { "<Leader>ff", "<Cmd>Telescope find_files<CR>", desc = "Fuzzy find files in cwd" },
  { "<Leader>fs", "<Cmd>Telescope live_grep<CR>", desc = "Find string in cwd" },
  { "<Leader>fc", "<Cmd>Telescope grep_string<CR>", desc = "Find string under cursor in cwd" },
  { "<Leader>fb", "<Cmd>Telescope buffers<CR>", desc = "Find buffer" },

  -- color scheme switcher
  { "<Leader><Leader>tt", "<Cmd>Telescope colorscheme<CR>", desc = "Select color scheme" },

  -- diagnostics
  { "<Leader>dd", "<Cmd>Telescope diagnostics<CR>" },
}

M.config = function()
  local telescope = require("telescope")
  local actions = require("telescope.actions")

  telescope.setup({
    defaults = {
      mappings = {
        i = {
          ["<C-h>"] = "which_key",
          ["<C-d>"] = actions.delete_buffer,
          ["<C-k>"] = actions.move_selection_previous,
          ["<C-j>"] = actions.move_selection_next,
          ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        },
        n = {
          ["<C-d>"] = actions.delete_buffer,
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
  telescope.load_extension("harpoon")
end

return M
