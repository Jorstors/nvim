return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "LspAttach", -- load when an LSP actually attaches
  priority = 1000,
  config = function()
    require("tiny-inline-diagnostic").setup({
      -- pick your style or keep defaults
      -- preset = "modern",
      -- optional custom signs like in the guide:
      -- signs = { left = "", right = "", diag = "●", arrow = "    ", up_arrow = "    ", vertical = " │", vertical_end = " └" },
      -- blend = { factor = 0.22 },
    })
  end,
}
