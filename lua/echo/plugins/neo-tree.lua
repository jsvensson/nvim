local M = {
  "nvim-neo-tree/neo-tree.nvim",
  event = "BufEnter",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "-", "<Cmd>Neotree action=focus toggle<CR>", desc = "Toggle Neotree" },
    { "_", "<Cmd>Neotree action=focus reveal<CR>", desc = "Reveal buffer in Neotree" },
  },
}

M.opts = {
  window = {
    mappings = {
      ['-'] = 'close_window',
      ['<'] = 'close_all_nodes',
      ['<Backspace>'] = false,
      ['<C-s>'] = 'open_split',
      ['<C-t>'] = 'open_tabnew',
      ['<C-v>'] = 'open_vsplit',
      ['<Left>'] = 'close_node',
      ['<Right>'] = 'open',
      ['<Space>'] = false,
      ['>'] = 'expand_all_nodes',
      ['F'] = 'clear_filter',
      ['P'] = 'toggle_preview',
      ['S'] = false,
      ['c'] = { 'copy', config = { show_path = 'relative' } },
      ['h'] = false,
      ['l'] = 'open',
      ['m'] = { 'move', config = { show_path = 'relative' } },
      ['s'] = false,
      ['t'] = false,
      ['u'] = 'navigate_up',
      ['z'] = false,
    }
  },
  default_component_configs = {
    modified = {
      symbol = '✚',
      highlight = 'NeoTreeModified',
    },
    git_status = {
      symbols = {
        modified  = '', -- already visible with filename color
        untracked = '',
        ignored   = '',
        unstaged  = '󰄱',
        staged    = '',
        conflict  = '',
      },
    },
  },
}

M.config = function(_, opts)
  require('neo-tree').setup(opts)
end

return M

