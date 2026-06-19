# nvim config

LazyVim-based Neovim config.

## Prerequisites (Windows)

Install these **before** opening Neovim:

| Tool | Why | Install |
|---|---|---|
| [Neovim](https://github.com/neovim/neovim/releases) 0.10+ | Runtime | `winget install Neovim.Neovim` |
| [Git for Windows](https://git-scm.com) | Plugin management, git features | `winget install Git.Git` |
| [Nerd Font](https://www.nerdfonts.com) (e.g. JetBrainsMono) | Icons in UI | Download + install, set in terminal |
| [Node.js + npm](https://nodejs.org) | LSP servers (TS, ESLint, Prettier, etc.) | `winget install OpenJS.NodeJS.LTS` |
| [Python 3 + pip](https://www.python.org) | LSP servers (basedpyright, pylint, black) | `winget install Python.Python.3` |
| [lazygit](https://github.com/jesseduffield/lazygit) | `:LazyGit` | `winget install JesseDuffield.lazygit` |
| [ripgrep](https://github.com/BurntSushi/ripgrep) | Telescope file search | `winget install BurntSushi.ripgrep.MSVC` |
| [opencode CLI](https://opencode.ai) | AI assistant (opencode.nvim) | `npm install -g opencode-ai` |
| C compiler ([MSVC Build Tools](https://visualstudio.microsoft.com/downloads/#build-tools-for-visual-studio-2022) or MinGW) | tree-sitter parser compilation | `winget install Microsoft.VisualStudio.2022.BuildTools` |

### Optional

| Tool | Why | Install |
|---|---|---|
| [fd](https://github.com/sharkdp/fd) | Faster Telescope search | `winget install sharkdp.fd` |

### Mason-managed LSP servers & tools

These install automatically on first launch — no manual steps needed:

**Python:** basedpyright, pylint, black, debugpy
**Web:** typescript-language-server, eslint-lsp, prettier, html-lsp, css-lsp, json-lsp, yaml-language-server, tailwindcss-language-server
**Lua:** lua-language-server, stylua
**C/C++:** clangd
**Shell:** bash-language-server, shfmt, shellcheck
**Azure:** bicep-lsp, azure-pipelines-language-server
**Other:** marksman

> If any fail to install, ensure Node.js/npm and Python/pip are on your `PATH`,
> then run `:Mason` to retry.

### LazyVim-default formatters & linters

[conform.nvim](https://github.com/stevearc/conform.nvim) and [nvim-lint](https://github.com/mfussenegger/nvim-lint) are pre-configured by LazyVim.
They pick up tools from your `PATH` automatically. Most are covered by Mason above;
additional ones (e.g. `black`, `stylua`, `shellcheck`) should already be installed
by Mason or need to be on your `PATH` manually.

## Verify

```powershell
nvim --version | findstr ^NVIM
git --version
node --version
python --version
lazygit --version
rg --version
opencode --version
```
