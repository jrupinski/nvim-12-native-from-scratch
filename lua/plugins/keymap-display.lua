vim.pack.add({
  { src = "https://github.com/folke/which-key.nvim" },
  { src = "https://github.com/echasnovski/mini.icons" },
  }
)

require('which-key').setup({
  delay = 0,
})

require('which-key').add({
  { '<leader>h', group = 'Git [H]unk' },
  { '<leader>l', group = '[L]SP' },
  { '<leader>t', group = '[S]earch' },
  { '<leader>t', group = '[T]est' },
})

