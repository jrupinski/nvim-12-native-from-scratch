local keymap = vim.keymap.set
-- Don't print the command in status bar
local s = { silent = true }

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable space in normal mode, just in case of legacy behavior
keymap("n", "<space>", "<Nop>", { desc = 'Disable space default' })

-- Update packages
keymap("n", "<leader>ps", '<cmd>lua vim.pack.update()<CR>', { desc = '[p]ackage [s]ync/update' })

-- Some keymaps from a minimalistic setup - TBD if they'll be useful QOL change
keymap("n", "j", function()
  return tonumber(vim.api.nvim_get_vvar("count")) > 0 and "j" or "gj"
end, { expr = true, silent = true, desc = 'smart down (gj)' })
keymap("n", "k", function()
  return tonumber(vim.api.nvim_get_vvar("count")) > 0 and "k" or "gk"
end, { expr = true, silent = true, desc = 'smart up (gk)' })
keymap("n", "<C-d>", "<C-d>zz", { desc = 'scroll [d]own centered' })
keymap("n", "<C-u>", "<C-u>zz", { desc = 'scroll [u]p centered' })
keymap("n", "<Leader>w", "<cmd>w!<CR>", { silent = true, desc = '[w]rite file (force)' })
keymap("n", "<Leader>te", "<cmd>tabnew<CR>", { silent = true, desc = '[t]ab n[e]w' })
keymap("n", "<Leader>%", "<cmd>vsplit<CR>", { silent = true, desc = 'split [%%] vertical' })
keymap("n", "<Leader>\"", "<cmd>split<CR>", { silent = true, desc = 'split ["] horizontal' })
keymap("n", "<Leader>f", ":lua vim.lsp.buf.format()<CR>", { silent = true, desc = '[f]ormat buffer (LSP)' })
keymap("v", "p", '"_dP', { desc = '[p]aste without yank' })
keymap("t", "<Esc>", "<C-\\><C-N>", { desc = 'exit terminal mode' })
keymap("n", "<leader>cd", '<cmd>lua vim.fn.chdir(vim.fn.expand("%:p:h"))<CR>', { desc = '[c]hange [d]irectory to file' })

