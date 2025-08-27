return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    -- REQUIRED: Setup Harpoon
    local harpoon = require("harpoon")
    harpoon:setup()

    -- Basic Harpoon keymaps
    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():add()
    end, { desc = "Harpoon: Add file" })
    vim.keymap.set("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Harpoon: Toggle quick menu" })

    -- Navigate between the first four harpooned files
    vim.keymap.set("n", "<a-1>", function()
      harpoon:list():select(1)
    end, { desc = "Harpoon: Go to file 1" })
    vim.keymap.set("n", "<a-2>", function()
      harpoon:list():select(2)
    end, { desc = "Harpoon: Go to file 2" })
    vim.keymap.set("n", "<a-3>", function()
      harpoon:list():select(3)
    end, { desc = "Harpoon: Go to file 3" })
    vim.keymap.set("n", "<a-4>", function()
      harpoon:list():select(4)
    end, { desc = "Harpoon: Go to file 4" })

    -- Navigate next and previous
    vim.keymap.set("n", "<C-S-P>", function()
      harpoon:list():prev()
    end, { desc = "Harpoon: Previous file" })
    vim.keymap.set("n", "<C-S-N>", function()
      harpoon:list():next()
    end, { desc = "Harpoon: Next file" })
  end,
}
