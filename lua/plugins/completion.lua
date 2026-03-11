vim.pack.add({
  { src = "https://github.com/saghen/blink.cmp", version = 'v1.9.1' },
  { src = "https://github.com/rafamadriz/friendly-snippets" }
})
require('blink.cmp').setup({
  fuzzy = { implementation = 'prefer_rust_with_warning' },
  signature = { enabled = true },

  -- Auto show documentation for completions
  completion = {
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 0
    }
  },

  cmdline = {
    -- Auto show completions for command mode
    completion = { menu = { auto_show = true } },
    keymap = {
      preset = 'inherit',
      -- ['<CR>'] = { 'accept_and_enter', 'fallback' },
      -- recommended, as the default keymap will only show and select the next item
      ['<Tab>'] = { 'show', 'accept' },
    },
  },

  sources = {
    default = { "lazydev", "lsp", "path", "snippets", "buffer" },
    providers = {
      lazydev = {
        name = "LazyDev",
        module = "lazydev.integrations.blink",
        score_offset = 100,
      },

      snippets = {
        opts = {
          -- see the list of frameworks in: https://github.com/rafamadriz/friendly-snippets/tree/main/snippets/frameworks
          -- and search for possible languages in: https://github.com/rafamadriz/friendly-snippets/blob/main/package.json
          -- the following is just an example, you should only enable the frameworks that you use
          extended_filetypes = {
            markdown = { 'jekyll' },
            sh = { 'shelldoc' },
            ruby = { "rails" },
            eruby = { "html", "rails" },
          }
        }
      }
    },
  },
})
