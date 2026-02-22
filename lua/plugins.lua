-- Git signs
vim.pack.add({
  { src = "https://github.com/lewis6991/gitsigns.nvim" },
})
require('gitsigns').setup({})

-- LSP
vim.pack.add({
  { src = "https://github.com/mason-org/mason.nvim" },
})
require("mason").setup({})

-- File navigation
vim.pack.add({
  { src = "https://github.com/stevearc/oil.nvim" },
  { src = "https://github.com/echasnovski/mini.icons" },
})
require("mini.icons").setup()
require("oil").setup({
  columns = {
    "icon",
    -- "permissions",
    -- "size",
    -- "mtime",
  },
  keymaps = {
    -- -- Do not override tmux keymaps
    -- ['<C-h>'] = false,
    -- ['<C-l>'] = false,
    -- ['<C-k>'] = false,
    -- ['<C-j>'] = false,
    ['<C-v>'] = { 'actions.select', opts = { vertical = true }, desc = 'Open the entry in a vertical split' },
    ['<C-s>'] = { 'actions.select', opts = { horizontal = true }, desc = 'Open the entry in a horizontal split' },
    ['<C-t>'] = { 'actions.select', opts = { tab = true }, desc = 'Open the entry in new tab' },
    ['yp'] = {
      callback = function()
        require('oil.actions').copy_entry_path.callback()
        vim.fn.setreg('+', vim.fn.getreg(vim.v.register))
      end,
      desc = 'Copy filepath to system clipboard',
    },
  },
  view_options = {
    show_hidden = true,
  },
}
)
