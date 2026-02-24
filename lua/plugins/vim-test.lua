vim.pack.add({
  { src = 'https://github.com/vim-test/vim-test' },
  { src = 'https://github.com/preservim/vimux' }
})

-- Set the runner strategy to vimux
vim.g['test#strategy'] = 'vimux'

-- Custom work executables for Ruby/Rails
-- but the general 'ruby#executable' works as a fallback.
vim.g['test#ruby#rails#executable'] = 'dip test'
-- fallback, verify if needed
-- vim.g['test#ruby#executable'] = 'dip test'

local map = vim.keymap.set
map('n', '<leader>tn', ':TestNearest<CR>', { desc = '[T]est [N]earest' })
map('n', '<leader>tf', ':TestFile<CR>', { desc = '[T]est [F]ile' })
map('n', '<leader>ta', ':TestSuite<CR>', { desc = '[T]est Suite [A]ll' })
map('n', '<leader>tl', ':TestLast<CR>', { desc = '[T]est [L]ast' })
map('n', '<leader>tv', ':TestVisit<CR>', { desc = '[T]est [V]isit' })
