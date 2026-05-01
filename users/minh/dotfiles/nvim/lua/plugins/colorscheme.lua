return {
  { "ellisonleao/gruvbox.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "rebelot/kanagawa.nvim" },
  { "vague2k/vague.nvim" },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },
}
