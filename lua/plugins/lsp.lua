return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      basedpyright = {},

      -- Force ruff to same encoding as basedpyright
      ruff = {
        capabilities = {
          offsetEncoding = { "utf-16" },
        },
      },

      -- ...your other servers...
    },
  },
}
