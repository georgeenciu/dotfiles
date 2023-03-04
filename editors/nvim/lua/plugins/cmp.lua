return {
  "hrsh7th/nvim-cmp",
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      mapping = {
        ["<M-;>"] = cmp.mapping(function()
          vim.api.nvim_feedkeys(
            vim.fn["copilot#Accept"](vim.api.nvim_replace_termcodes("<Tab>", true, true, true)),
            "n",
            true
          )
        end),
      },
    })
  end,
  -- opt = function()
  --   local cmp = require("cmp")
  --   cmp.setup({
  --     mapping = cmp.mapping.preset.insert({
  --       ["C-e"] = cmp.mapping(function()
  --         vim.api.nvim_feedkeys(vim.fn["copilot#Accept"](""), "n", true)
  --       end),
  --     }),
  --   })
  -- end,
}
