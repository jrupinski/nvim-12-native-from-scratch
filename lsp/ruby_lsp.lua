return {
  cmd = {'ruby-lsp'},
  filetypes = { "ruby", "eruby" },
  init_options = { formatter = "auto" },
  reuse_client = { "../lsp/ruby_lsp.lua:16" },
  root_markers = { "Gemfile", ".git" },
}
