{
  pkgs,
  config,
  ...
}: {
  xdg.configFile."nvim".source =
    config.lib.file.mkOutOfStoreSymlink "/home/minh/nixos-config/users/minh/dotfiles/nvim";

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
    markdownlint-cli2
    golangci-lint
    statix
    hadolint

    #formatter
    alejandra
    prettier
    biome

    #go
    gotools
    gofumpt
    gomodifytags
    impl
    delve
  ];
}
