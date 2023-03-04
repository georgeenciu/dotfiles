return {
  "neovim/nvim-lspconfig",
  opts = {
    autoformat = true,
    servers = {
      jsonlsp = {
        settings = {
          json = {
            format = {
              enable = true,
            },
          },
        },
      },
      tsserver = {
        init_options = {
          maxTsServerMemory = 8192,
        },
      },
      eslint = {},
    },
  },
}
