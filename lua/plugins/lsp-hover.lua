-- lua/plugins/lsp-hover.lua
return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    -- keep your existing servers (basedpyright, ruff, etc.)
    opts.servers = opts.servers or {}

    -- chain any existing on_attach
    local prev = opts.on_attach
    opts.on_attach = function(client, bufnr)
      if prev then
        prev(client, bufnr)
      end

      -- Pretty borders for hover/signature floats
      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
      vim.lsp.handlers["textDocument/signatureHelp"] =
        vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })

      -- Hover docs on 'K'
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, silent = true, desc = "LSP Hover" })

      -- Signature help on Ctrl-k (normal + insert)
      vim.keymap.set(
        { "n", "i" },
        "<C-k>",
        vim.lsp.buf.signature_help,
        { buffer = bufnr, silent = true, desc = "LSP Signature Help" }
      )
    end

    return opts
  end,
}
