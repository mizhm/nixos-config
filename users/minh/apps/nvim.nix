{pkgs, ...}: {
  xdg.configFile."nvim".source = ../dotfiles/nvim;

  programs.neovim = {
    enable = true;
  };

  home.packages = with pkgs; [
    tree-sitter

    #lsp
    lua-language-server
    yaml-language-server
    tailwindcss-language-server
    vtsls
    nil
    gopls
    vscode-langservers-extracted

    #linting
    eslint

    #formatter
    alejandra
    prettier
    biome
  ];
}
