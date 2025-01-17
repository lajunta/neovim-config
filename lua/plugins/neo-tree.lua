--@type LazySpec
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Show hidden files
        hide_dotfiles = false, -- Ensure dotfiles are not hidden
      },
    },
  },
}
