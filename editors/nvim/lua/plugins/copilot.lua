return {
  {
    "github/copilot.vim",
    lazy = false,
    init = function()
      vim.keymap.set("i", "<a-cr>", "copilot#Accept()", { desc = "Accept suggestion", silent = true, expr = true })
    end,
    keys = {},
  },
}
