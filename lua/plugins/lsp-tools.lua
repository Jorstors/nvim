-- lua/plugins/lsp-tools.lua
return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Python
        "basedpyright",
        "ruff",
        "black",
        "debugpy",

        -- Lua
        "lua-language-server",
        "stylua",

        -- Web / Markup
        "typescript-language-server",
        "eslint-lsp",
        "prettier",
        "html-lsp",
        "css-lsp",
        "json-lsp",
        "yaml-language-server",
        "marksman",
        "tailwindcss-language-server",

        -- C/C++
        "clangd",
        "clang-format",

        -- Shell
        "bash-language-server",
        "shfmt",
        "shellcheck",
      },
    },
  },
}
