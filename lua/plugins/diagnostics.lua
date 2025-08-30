-- Turn OFF global inline diagnostics that LSP sets up via LazyVim
return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      virtual_text = false, -- <- the key line
      -- optional:
      -- underline = false,
      -- update_in_insert = false,
      -- severity_sort = true,
    },
  },
}
