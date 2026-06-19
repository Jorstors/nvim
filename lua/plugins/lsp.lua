return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.diagnostics = vim.tbl_deep_extend("force", opts.diagnostics or {}, {
      virtual_text = false,
      underline = false,
      update_in_insert = false,
      severity_sort = true,
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = " ",
          [vim.diagnostic.severity.WARN] = " ",
          [vim.diagnostic.severity.HINT] = " ",
          [vim.diagnostic.severity.INFO] = " ",
        },
      },
    })

    opts.servers = vim.tbl_deep_extend("force", opts.servers or {}, {
      basedpyright = {},
    })

    local prev = opts.on_attach
    opts.on_attach = function(client, bufnr)
      if prev then prev(client, bufnr) end

      vim.lsp.handlers.hover = vim.lsp.handlers.hover or {}
      vim.lsp.handlers.hover.border = "rounded"
      vim.lsp.handlers.signature_help = vim.lsp.handlers.signature_help or {}
      vim.lsp.handlers.signature_help.border = "rounded"

      vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, silent = true, desc = "LSP Hover" })
      vim.keymap.set({ "n", "i" }, "<C-k>", vim.lsp.buf.signature_help, { buffer = bufnr, silent = true, desc = "LSP Signature Help" })
    end

    return opts
  end,
}
