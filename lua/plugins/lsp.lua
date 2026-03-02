vim.pack.add({
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  -- Neovim notifications and LSP progress messages.
  { src = "https://github.com/j-hui/fidget.nvim" },
  -- Ruby on Rails go-to definitions, like has-many etc.
  { src = "https://github.com/tpope/vim-rails" },
})

require("mason").setup()
require("mason-lspconfig").setup({
  automatic_enable = true,
})

vim.keymap.set("n", "<leader>li", ":LspInstall<CR>", { desc = "[L]SP [I]nstall" })
vim.keymap.set("n", "<leader>lh", ":checkhealth vim.lsp<CR>", { desc = "[L]SP [H]ealth" })
