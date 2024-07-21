return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- jsonlsp = {
      --   settings = {
      --     json = {
      --       format = {
      --         enable = true,
      --       },
      --     },
      --   },
      -- },
      tsserver = {
        init_options = {
          maxTsServerMemory = 8192,
        },
      },
      eslint = {},
    },
  },
}
