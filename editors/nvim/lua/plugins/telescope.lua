return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>fR",
      function()
        require("telescope.builtin").resume()
      end,
      desc = "Resume last picker",
    },
  },
}
