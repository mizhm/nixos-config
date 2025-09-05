{
  pkgs,
  ...
}:
{
  xdg.configFile."nvim".source = ../confs/nvim;

  programs.neovim = {
    enable = true;
  };

  home.packages = with pkgs; [
    # need to compile lib
    gcc

    #lsp
    lua-language-server
    typescript-language-server
    tailwindcss-language-server
    nil

    #lininting
    eslint

    #formatter
    alejandra
    prettier
    biome

    #util
    fd
    fzf
    stylua
    lazygit
    ripgrep
    imagemagick
  ];
}
