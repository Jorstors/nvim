-- lua/plugins/lsp-tools.lua
return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Python
        "basedpyright",
        "pylint",
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

        -- Shell
        "bash-language-server",
        "shfmt",
        "shellcheck",

        -- Azure
        "bicep-lsp",
        "azure-pipelines-language-server",
      },
    },
  },
}
