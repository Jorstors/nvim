-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("keymaps")
require("options")
require("config.keymaps")

require("oil").setup({
  view_options = {
    show_hidden = true,
  },
  win_options = {
    signcolumn = "auto:2",
  },
})

require("oil-git-status").setup({
  show_ignored = true, -- show files that match gitignore with !!
  symbols = { -- customize the symbols that appear in the git status columns
    index = {
      ["!"] = "!", -- ignored
      ["?"] = "?", -- untracked
      ["A"] = "+", -- added
      ["C"] = "C", -- copied
      ["D"] = "-", -- deleted
      ["M"] = "~", -- modified
      ["R"] = "→", -- renamed
      ["T"] = "T", -- type changed
      ["U"] = "U", -- unmerged
      [" "] = " ",
    },
    working_tree = {
      ["!"] = "!", -- ignored
      ["?"] = "?", -- untracked
      ["A"] = "+", -- added
      ["C"] = "C", -- copied
      ["D"] = "-", -- deleted
      ["M"] = "~", -- modified
      ["R"] = "→", -- renamed
      ["T"] = "T", -- type changed
      ["U"] = "U", -- unmerged
      [" "] = " ",
    },
  },
})

require("Comment").setup()
require("cord").setup()
