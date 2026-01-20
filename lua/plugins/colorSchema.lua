return {
  -- Install One Dark Pro theme
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- load before other themes
  },
  -- Tell LazyVim to use One Dark Pro
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
