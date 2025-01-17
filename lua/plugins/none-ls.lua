---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = function(_, _)
    local null_ls = require "null-ls"

    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.prettier.with {
          command = "prettierd", -- Use prettierd for better performance
          filetypes = { "html", "css", "javascript", "json", "yaml", "markdown", "go" }, -- Add Go template if necessary
        },
        null_ls.builtins.formatting.goimports,
      },
    }
  end,
}
