vim.pack.add({
  { src = 'https://github.com/mbbill/undotree' }
})

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Undo: Toggle Tree' })

vim.g.undotree_WindowLayout = 2
vim.g.undotree_SplitWidth = 30
vim.g.undotree_SetFocusWhenToggle = 1
