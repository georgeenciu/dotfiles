return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
    },
    --   init = function()
    --     vim.g.copilot_no_tab_map = true
    --     vim.keymap.set(
    --       "i",
    --       "<Plug>(vimrc:copilot-dummy-map)",
    --       'copilot#Accept("")',
    --       { silent = true, expr = true, desc = "Copilot dummy accept" }
    --     )
    --     -- local map = vim.keymap.set
    --     -- map("i", "<C-j>", "copilot#Accept('<CR>')", { noremap = true, silent = true, expr = true })
    --   end,
    -- },
  },
  {
    "zbirenbaum/copilot-cmp",
    opts = {},
  },
}
