vim.pack.add({
  { src = "https://github.com/aserowy/tmux.nvim" },
})

require("tmux").setup({
  copy_sync = {
    sync_clipboard = false,
  },
})
