return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        fish = { "fish_indent" },
        lua = { "stylua" },
        nix = { "alejandra" },
        python = { "black" },
        sh = { "shfmt" },
      },
    },
  },
}
