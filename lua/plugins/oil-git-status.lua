return {
  "refractalize/oil-git-status.nvim",
  dependencies = { "stevearc/oil.nvim" },
  opts = {
    show_ignored = true,
    symbols = {
      index = {
        ["!"] = "!",
        ["?"] = "?",
        ["A"] = "+",
        ["C"] = "C",
        ["D"] = "-",
        ["M"] = "~",
        ["R"] = "→",
        ["T"] = "T",
        ["U"] = "U",
        [" "] = " ",
      },
      working_tree = {
        ["!"] = "!",
        ["?"] = "?",
        ["A"] = "+",
        ["C"] = "C",
        ["D"] = "-",
        ["M"] = "~",
        ["R"] = "→",
        ["T"] = "T",
        ["U"] = "U",
        [" "] = " ",
      },
    },
  },
}
