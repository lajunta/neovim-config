return {
  "neovim/nvim-lspconfig",
  opts = function(_, _)
    local lspconfig = require "lspconfig"
    lspconfig.gopls.setup {
      cmd = { "gopls" },
      filetypes = { "go", "gomod", "html", "tmpl", "gohtml" },
      root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
      settings = {
        gopls = {
          analyses = {
            unusedparams = true,
          },
          staticcheck = true,
          completeUnimported = true,
          usePlaceholders = true,
        },
      },
    }
  end,
}
