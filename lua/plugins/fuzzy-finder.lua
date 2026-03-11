vim.pack.add({
  { src = "https://github.com/ibhagwan/fzf-lua" },
  { src = "https://github.com/nvim-mini/mini.icons" },
}
)
require("fzf-lua").setup({
  lsp = {
    -- Make it async to not timeout - show new stuff as it comes
    async_or_timeout = true,
  },
})

-- Copy over kickstart telescope keymaps, just switch provider to fzf-lua and adjust some calls.
local builtin = require 'fzf-lua'
-- Register fzf-lua as the UI interface for vim.ui.select
builtin.register_ui_select()
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
vim.keymap.set('n', '<leader>sf', builtin.files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sq', builtin.quickfix, { desc = '[S]earch [Q]uickfix list' })
vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect fzf-lua built-in commands' })
vim.keymap.set('n', '<leader>sw', builtin.grep_cword, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', builtin.grep_visual, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics_document, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

vim.keymap.set('n', '<leader>/', builtin.lgrep_curbuf, { desc = '[/] Fuzzily search in current buffer' })
vim.keymap.set('n', '<leader>sn', function()
  builtin.files({ cwd = vim.fn.stdpath 'config' })
end, { desc = '[S]earch [N]eovim config files' })


-- LSP keymaps
local lsp = vim.lsp.buf
-- Rename the variable under your cursor.
--  Most Language Servers support renaming across files, etc.
vim.keymap.set('n', 'grn', lsp.rename, { silent = true, desc = 'LSP: [R]e[n]ame' })

-- Execute a code action, usually your cursor needs to be on top of an error
-- or a suggestion from your LSP for this to activate.
vim.keymap.set({ 'n', 'x' }, 'gra', lsp.code_action, { silent = true, desc = 'LSP: [G]oto Code [A]ction' })

-- Find references for the word under your cursor.
vim.keymap.set('n', 'grr', builtin.lsp_references, { silent = true, desc = 'LSP: [G]oto [R]eferences' })

-- Jump to the implementation of the word under your cursor.
--  Useful when your language has ways of declaring types without an actual implementation.
vim.keymap.set('n', 'gri', builtin.lsp_implementations, { silent = true, desc = 'LSP: [G]oto [I]mplementation' })

-- Jump to the definition of the word under your cursor.
--  This is where a variable was first declared, or where a function is defined, etc.
--  To jump back, press <C-t>.
vim.keymap.set('n', 'grd', builtin.lsp_definitions, { silent = true, desc = 'LSP: [G]oto [D]efinition' })

-- WARN: This is not Goto Definition, this is Goto Declaration.
--  For example, in C this would take you to the header.
vim.keymap.set('n', 'grD', builtin.lsp_declarations, { silent = true, desc = 'LSP: [G]oto [D]eclaration' })

-- Fuzzy find all the symbols in your current document.
--  Symbols are things like variables, functions, types, etc.
vim.keymap.set('n', 'gO', builtin.lsp_document_symbols, { silent = true, desc = 'LSP: Open Document Symbols' })

-- Fuzzy find all the symbols in your current workspace.
--  Similar to document symbols, except searches over your entire project.
vim.keymap.set('n', 'gW', builtin.lsp_workspace_symbols, { silent = true, desc = 'LSP: Open Workspace Symbols' })

-- Jump to the type of the word under your cursor.
--  Useful when you're not sure what type a variable is and you want to see
--  the definition of its *type*, not where it was *defined*.
vim.keymap.set('n', 'grt', builtin.lsp_typedefs, { silent = true, desc = 'LSP: [G]oto [T]ype Definition' })

-- Show documentation for the symbol under the cursor (Hover)
vim.keymap.set('n', 'K', lsp.hover, { desc = 'LSP: [K] Hover Documentation' })

-- Show signature help (useful when typing arguments for a method)
vim.keymap.set('i', '<C-k>', lsp.signature_help, { desc = 'LSP: Signature Help' })
