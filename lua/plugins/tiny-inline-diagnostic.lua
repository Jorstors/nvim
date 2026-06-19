return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "LspAttach",
  priority = 1000,
  config = function()
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { underline = false, undercurl = false })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { underline = false, undercurl = false })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { underline = false, undercurl = false })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { underline = false, undercurl = false })

    require("tiny-inline-diagnostic").setup({
      signs = {
        left = "",
        right = "",
        diag = "●",
        arrow = "    ",
        up_arrow = "    ",
        vertical = " │",
        vertical_end = " └",
      },
      blend = {
        factor = 0.22,
      },
    })
  end,
}
