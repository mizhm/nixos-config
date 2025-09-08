{pkgs, ...}: {
  xdg.configFile."nvim".source = ../confs/nvim;

  programs.neovim = {
    enable = true;
  };

  home.packages = with pkgs; [
    # need to compile lib
    gcc

    #lsp
    lua-language-server
    yaml-language-server
    tailwindcss-language-server
    vtsls
    nil
    gopls
    vscode-langservers-extracted

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
