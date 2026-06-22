return {
  "sudo-tee/opencode.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        anti_conceal = { enabled = false },
        file_types = { "markdown", "opencode_output" },
      },
      ft = { "markdown", "opencode_output" },
    },
  },
  config = function()
    require("opencode").setup({
      preferred_picker = "snacks",
      preferred_completion = "blink",
      keymap = {
        editor = {
          ["<leader>og"] = false,
          ["<leader>o"] = { "toggle" },
          ["<C-a>"] = { "quick_chat", mode = { "n", "x" } },
          ["<C-x>"] = { "configure_provider", mode = { "n", "x" } },
        },
      },
      ui = {
        position = "right",
        window_width = 0.40,
      },
    })
  end,
}
