vim.pack.add({
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter-textobjects' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter-context' },
  { src = 'https://github.com/andymass/vim-matchup' },
})
require('nvim-treesitter').install({ 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'ruby',
  'query', 'vim', 'vimdoc' })
vim.g.matchup_matchparen_offscreen = { method = "popup" }
