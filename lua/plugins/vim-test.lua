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
map('n', '<leader>t', ':TestNearest<CR>', { desc = 'Test: Nearest' })
map('n', '<leader>T', ':TestFile<CR>', { desc = 'Test: File' })
map('n', '<leader>a', ':TestSuite<CR>', { desc = 'Test: Suite' })
map('n', '<leader>l', ':TestLast<CR>', { desc = 'Test: Last' })
map('n', '<leader>g', ':TestVisit<CR>', { desc = 'Test: Visit' })
