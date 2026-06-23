return {
  "stevearc/oil.nvim",
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    },
    win_options = {
      signcolumn = "auto:2",
    },
    keymaps = {
      ["<C-h>"] = false,
      ["<C-l>"] = false,
    },
  },
  dependencies = {
    { "nvim-mini/mini.icons", opts = {} },
  },
  cmd = "Oil",
}
