return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup()
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  keys = {
    {
      "<leader>pt",
      function()
        require("chatgpt").add_tests()
      end,
      desc = "ChatGPT add tests",
    },
    {
      "<leader>pb",
      function()
        require("chatgpt").fix_bugs()
      end,
      desc = "ChatGPT fix bugs",
    },
  },
}
