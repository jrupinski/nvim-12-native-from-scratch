local keymap = vim.keymap.set
-- Don't print the command in status bar
local s = { silent = true }

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable space in normal mode, just in case of legacy behavior
keymap("n", "<space>", "<Nop>")

-- Update packages
keymap("n", "<leader>ps", '<cmd>lua vim.pack.update()<CR>')

-- Some keymaps from a minimalistic setup - TBD if they'll be useful QOL change
keymap("n", "j", function()
  return tonumber(vim.api.nvim_get_vvar("count")) > 0 and "j" or "gj"
end, { expr = true, silent = true }) -- Move down, but use 'gj' if no count is given
keymap("n", "k", function()
  return tonumber(vim.api.nvim_get_vvar("count")) > 0 and "k" or "gk"
end, { expr = true, silent = true })                         -- Move up, but use 'gk' if no count is given
keymap("n", "<C-d>", "<C-d>zz")                              -- Scroll down and center the cursor
keymap("n", "<C-u>", "<C-u>zz")                              -- Scroll up and center the cursor
keymap("n", "<Leader>w", "<cmd>w!<CR>", s)                   -- Save the current file
keymap("n", "<Leader>te", "<cmd>tabnew<CR>", s)              -- Open a new tab
keymap("n", "<Leader>%", "<cmd>vsplit<CR>", s)               -- Split the window vertically
keymap("n", "<Leader>\"", "<cmd>split<CR>", s)               -- Split the window horizontally
keymap("n", "<Leader>f", ":lua vim.lsp.buf.format()<CR>", s) -- Format the current buffer using LSP
keymap("v", "p", '"_dP')                                     -- Paste without overwriting the default register
keymap("t", "<Esc>", "<C-\\><C-N>")                          -- Exit terminal mode
-- Change directory to the current file's directory
keymap("n", "<leader>cd", '<cmd>lua vim.fn.chdir(vim.fn.expand("%:p:h"))<CR>')

local lsp = vim.lsp.buf
-- Rename the variable under your cursor.
--  Most Language Servers support renaming across files, etc.
keymap('n', 'grn', lsp.rename, { silent = true, desc = 'LSP: [R]e[n]ame' })

-- Execute a code action, usually your cursor needs to be on top of an error
-- or a suggestion from your LSP for this to activate.
keymap({ 'n', 'x' }, 'gra', lsp.code_action, { silent = true, desc = '[G]oto Code [A]ction' })

-- Find references for the word under your cursor.
keymap('n', 'grr', lsp.references, { silent = true, desc = 'LSP: [G]oto [R]eferences' })

-- Jump to the implementation of the word under your cursor.
--  Useful when your language has ways of declaring types without an actual implementation.
keymap('n', 'gri', lsp.implementation, { silent = true, desc = 'LSP: [G]oto [I]mplementation' })

-- Jump to the definition of the word under your cursor.
--  This is where a variable was first declared, or where a function is defined, etc.
--  To jump back, press <C-t>.
keymap('n', 'grd', lsp.definition, { silent = true, desc = 'LSP: [G]oto [D]efinition' })

-- WARN: This is not Goto Definition, this is Goto Declaration.
--  For example, in C this would take you to the header.
keymap('n', 'grD', lsp.declaration, { silent = true, desc = 'LSP: [G]oto [D]eclaration' })

-- Fuzzy find all the symbols in your current document.
--  Symbols are things like variables, functions, types, etc.
keymap('n', 'gO', lsp.document_symbol, { silent = true, desc = 'LSP: Open Document Symbols' })

-- Fuzzy find all the symbols in your current workspace.
--  Similar to document symbols, except searches over your entire project.
keymap('n', 'gW', lsp.workspace_symbol, { silent = true, desc = 'LSP: Open Workspace Symbols' })

-- Jump to the type of the word under your cursor.
--  Useful when you're not sure what type a variable is and you want to see
--  the definition of its *type*, not where it was *defined*.
keymap('n', 'grt', lsp.type_definition, { silent = true, desc = 'LSP: [G]oto [T]ype Definition' })
