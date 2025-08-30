return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    -- keep your servers as-is (basedpyright, ruff, etc.)
    -- …

    -- Run once, right after the first LSP client attaches
    vim.api.nvim_create_autocmd("LspAttach", {
      once = true,
      callback = function()
        -- quiet the default inline spam; tiny-inline shows the line under cursor
        vim.diagnostic.config({
          underline = false,
          virtual_text = false,
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
        -- (Optional) also disable legacy handler’s virtual_text just in case
        vim.lsp.handlers["textDocument/publishDiagnostics"] =
          vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false })
      end,
    })

    return opts
  end,
}
