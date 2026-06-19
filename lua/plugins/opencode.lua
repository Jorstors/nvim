return {
  "nickjvandyke/opencode.nvim",
  version = "*",
  dependencies = {
    {
      "folke/snacks.nvim",
      optional = true,
      opts = {
        input = {},
        picker = {
          actions = {
            opencode_send = function(...)
              return require("opencode").snacks_picker_send(...)
            end,
          },
          win = {
            input = {
              keys = {
                ["<a-a>"] = { "opencode_send", mode = { "n", "i" } },
              },
            },
          },
        },
      },
    },
  },
  keys = {
    { "<C-a>", mode = { "n", "x" }, function() require("opencode").ask("@this: ", { submit = true }) end, desc = "Ask opencode…" },
    { "<C-x>", mode = { "n", "x" }, function() require("opencode").select() end, desc = "Select opencode…" },
    { "<leader>o", mode = { "n", "t" }, function() require("opencode").toggle() end, desc = "Toggle opencode" },
    { "go", function() return require("opencode").operator("@this ") end, desc = "Add range to opencode", expr = true },
    { "goo", function() return require("opencode").operator("@this ") .. "_" end, desc = "Add line to opencode", expr = true },
    { "<S-A-u>", function() require("opencode").command("session.half.page.up") end, desc = "Scroll opencode up" },
    { "<S-A-d>", function() require("opencode").command("session.half.page.down") end, desc = "Scroll opencode down" },
  },
  config = function()
    vim.g.opencode_opts = {}
    vim.o.autoread = true
  end,
}
