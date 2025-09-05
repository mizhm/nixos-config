{ pkgs
, config
, ...
}: {
  xdg.configFile."nvim".source = ../confs/nvim;

  programs.neovim = {
    enable = true;
  };

  home.packages = with pkgs; [
    # need to compile lib
    gcc

    #lsp
    lua-language-server

    #util
    fd
    fzf
    stylua
    lazygit
    ripgrep
    imagemagick
  ];
}
