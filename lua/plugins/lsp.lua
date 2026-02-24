vim.pack.add({
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/mason-org/mason.nvim' },
  { src = 'https://github.com/mason-org/mason-lspconfig.nvim' },
})

require('mason').setup()
require('mason-lspconfig').setup({
  automatic_enable = true,
})

vim.keymap.set('n', '<leader>li', ':LspInstall<CR>', { desc = '[L]SP [I]nstall' })
vim.keymap.set('n', '<leader>lh', ':checkhealth vim.lsp<CR>', { desc = '[L]SP [H]ealth' })
