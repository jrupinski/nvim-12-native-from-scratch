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

