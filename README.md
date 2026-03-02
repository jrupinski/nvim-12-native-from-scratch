# Neovim Config

Slimmer kickstart.nvim like configuration, utilizing nvim 0.12 native `vim.pack` package manager.

100% of functionality, 10% of the code.

## Features

- Fuzzy finding (files, grep, buffers, diagnostics, symbols)
- LSP integration (go-to definition, references, rename, code actions)
- Autocompletion with signature help
- Debugging
- Git integration (blame, hunks, staging, diffs)
- Test runner (nearest, file, suite)
- File browser
- Surround operations (add, change, delete)
- Syntax highlighting
- Undo tree visualization
- Keymap discovery (hints about available keys to press and their function)
- Tmux navigation

## Keymaps

### General

| Key | Mode | Description |
|-----|------|-------------|
| `<Space>` | n | Leader key |
| `<leader>w` | n | Write file (force) |
| `<leader>f` | n | Format buffer (LSP) |
| `<leader>%` | n | Vertical split |
| `<leader>"` | n | Horizontal split |
| `<leader>te` | n | New tab |
| `<leader>cd` | n | Change directory to file |
| `<leader>ps` | n | Package sync/update |
| `<C-d>` | n | Scroll down centered |
| `<C-u>` | n | Scroll up centered |
| `j` / `k` | n | Smart down/up (respects wrapping) |
| `p` | v | Paste without yank |
| `<Esc>` | t | Exit terminal mode |

### Fuzzy Finder (fzf-lua)

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>sh` | n | Search Help |
| `<leader>sk` | n | Search Keymaps |
| `<leader>sf` | n | Search Files |
| `<leader>sq` | n | Search Quickfix list |
| `<leader>ss` | n | Search fzf-lua built-in commands |
| `<leader>sw` | n | Search current Word |
| `<leader>sg` | n | Search by Grep |
| `<leader>sd` | n | Search Diagnostics |
| `<leader>sr` | n | Search Resume |
| `<leader>s.` | n | Search Recent Files |
| `<leader>sn` | n | Search Neovim config files |
| `<leader><leader>` | n | Find existing buffers |
| `<leader>/` | n | Fuzzily search in current buffer |

### LSP

| Key | Mode | Description |
|-----|------|-------------|
| `grn` | n | Rename |
| `gra` | n, x | Code Action |
| `grr` | n | Goto References |
| `gri` | n | Goto Implementation |
| `grd` | n | Goto Definition |
| `grD` | n | Goto Declaration |
| `grt` | n | Goto Type Definition |
| `gO` | n | Document Symbols |
| `gW` | n | Workspace Symbols |

### Debug (DAP)

| Key | Mode | Description |
|-----|------|-------------|
| `<F5>` | n | Start/Continue |
| `<F1>` | n | Step Into |
| `<F2>` | n | Step Over |
| `<F3>` | n | Step Out |
| `<F7>` | n | Toggle DAP UI |
| `<leader>b` | n | Toggle Breakpoint |
| `<leader>B` | n | Set Conditional Breakpoint |

### Git (gitsigns)

| Key | Mode | Description |
|-----|------|-------------|
| `]c` | n | Next git change |
| `[c` | n | Previous git change |
| `<leader>hs` | n, v | Stage hunk |
| `<leader>hr` | n, v | Reset hunk |
| `<leader>hS` | n | Stage buffer |
| `<leader>hu` | n | Undo stage hunk |
| `<leader>hR` | n | Reset buffer |
| `<leader>hp` | n | Preview hunk |
| `<leader>hb` | n | Blame line |
| `<leader>hd` | n | Diff against index |
| `<leader>hD` | n | Diff against last commit |

### Test (vim-test)

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>tn` | n | Test Nearest |
| `<leader>tf` | n | Test File |
| `<leader>ta` | n | Test Suite All |
| `<leader>tl` | n | Test Last |
| `<leader>tv` | n | Test Visit |

### File Browser (oil.nvim)

| Key | Mode | Description |
|-----|------|-------------|
| `-` | n | Open parent directory |

### Undo Tree

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>u` | n | Toggle Undo Tree |

