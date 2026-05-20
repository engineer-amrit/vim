return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      focus = "list",
      source = {
        files = {
          hidden = true,
          ignored = true,
        },
      },
    },
    explorer = {
      hidden = true, -- Show hidden files by default
      ignored = true, -- Show gitignored files by default
    },
  },
}
