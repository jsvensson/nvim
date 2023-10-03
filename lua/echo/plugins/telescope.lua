return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        mappings = {
          i = {
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
    })

    telescope.load_extension("fzf")
    telescope.load_extension("harpoon")

    -- set keymaps
    local keymap = vim.keymap

    -- file navigation
    keymap.set("n", "<Leader>ff", "<Cmd>Telescope find_files<CR>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<Leader>fr", "<Cmd>Telescope oldfiles<CR>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<Leader>fs", "<Cmd>Telescope live_grep<CR>", { desc = "Find string in cwd" })
    keymap.set("n", "<Leader>fc", "<Cmd>Telescope grep_string<CR>", { desc = "Find string under cursor in cwd" })
    keymap.set("n", "<Leader>fb", "<Cmd>Telescope buffers<CR>", { desc = "Find buffer" })

    -- color scheme switcher
    keymap.set("n", "<Leader><Leader>tt", "<Cmd>Telescope colorscheme<CR>", { desc = "Select color scheme" })

    -- -- diagnostics
    keymap.set("n", "<Leader>dd", "<Cmd>Telescope diagnostics<CR>")
  end,
}
