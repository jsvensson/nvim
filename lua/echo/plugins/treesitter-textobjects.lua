local M = {
  "nvim-treesitter/nvim-treesitter-textobjects",
  lazy = true,
}

M.config = function()
  require("nvim-treesitter.configs").setup({
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          -- assignments
          ["aa"] = { query = "@assignment.outer", desc = "Select outer part of an assignment" },
          ["ia"] = { query = "@assignment.inner", desc = "Select inner part of an assignment" },
          ["la"] = { query = "@assignment.lhs", desc = "Select left-hand side of an assignment" },
          ["ra"] = { query = "@assignment.rhs", desc = "Select right-hand side of an assignment" },

          -- arguments
          ["ap"] = { query = "@parameter.outer", desc = "Select outer part of a parameter/argument" },
          ["ip"] = { query = "@parameter.inner", desc = "Select inner part of a parameter/argument" },

          -- conditionals
          ["ai"] = { query = "@conditional.outer", desc = "Select outer part of a conditional" },
          ["ii"] = { query = "@conditional.inner", desc = "Select outer part of a conditional" },

          -- loops
          ["al"] = { query = "@loop.outer", desc = "Select outer part of a loop" },
          ["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },

          -- function calls
          ["af"] = { query = "@call.outer", desc = "Select outer part of a function call" },
          ["if"] = { query = "@call.inner", desc = "Select inner part of a function call" },

          -- method/function definitions
          ["am"] = { query = "@function.outer", desc = "Select outer part of a method/function definition" },
          ["im"] = { query = "@function.inner", desc = "Select inner part of a method/function definition" },

          -- classes
          ["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
          ["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },
        },
      },
      swap = {
        enabled = true,
        set_jumps = true,

        swap_next = {
          ["<Leader>np"] = "@parameter.inner", -- swap parameter/argument with next
          ["<Leader>nm"] = "@function.outer", -- swap function with next
        },

        swap_previous = {
          ["<Leader>pp"] = "@parameter.inner", -- swap parameter/argument with previous
          ["<Leader>pm"] = "@function.outer", -- swap function with previous
        },
      },
      move = {
        enable = true,
        set_jumps = true,

        -- Swedish layout on a Mac makes it annoying to access []{} for quick commands.
        -- Using Swedish characters ÖÄ instead; the two keys to the right of L in
        -- standard ANSI QWERTY.
        goto_next_start = {
          ["äf"] = { query = "@call.outer", desc = "Next function call start" },
          ["äm"] = { query = "@function.outer", desc = "Next method/function definition start" },
          ["äc"] = { query = "@class.outer", desc = "Next class start" },
          ["äi"] = { query = "@conditional.outer", desc = "Next conditional start" },
          ["äl"] = { query = "@loop.outer", desc = "Next loop start" },
        },

        goto_next_end = {
          ["Äf"] = { query = "@call.outer", desc = "Next function call end" },
          ["Äm"] = { query = "@function.outer", desc = "Next method/function definition end" },
          ["Äc"] = { query = "@class.outer", desc = "Next class end" },
          ["Äi"] = { query = "@conditional.outer", desc = "Next conditional end" },
          ["Äl"] = { query = "@loop.outer", desc = "Next loop end" },
        },

        goto_previous_start = {
          ["öf"] = { query = "@call.outer", desc = "Previous function call start" },
          ["öm"] = { query = "@function.outer", desc = "Previous method/function definition start" },
          ["öc"] = { query = "@class.outer", desc = "Previous class start" },
          ["öi"] = { query = "@conditional.outer", desc = "Previous conditional start" },
          ["öl"] = { query = "@loop.outer", desc = "Previous loop start" },
        },

        goto_previous_end = {
          ["Öf"] = { query = "@call.outer", desc = "Previous function call end" },
          ["Öm"] = { query = "@function.outer", desc = "Previous method/function definition end" },
          ["Öc"] = { query = "@class.outer", desc = "Previous class end" },
          ["Öi"] = { query = "@conditional.outer", desc = "Previous conditional end" },
          ["Öl"] = { query = "@loop.outer", desc = "Previous loop end" },
        },
      },
    },
  })

  local move = require("nvim-treesitter.textobjects.repeatable_move")

  vim.keymap.set({ "n", "x", "o" }, ".", move.repeat_last_move)
  vim.keymap.set({ "n", "x", "o" }, ",", move.repeat_last_move_opposite)
end

return M
