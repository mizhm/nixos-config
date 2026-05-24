{
  pkgs,
  config,
  ...
}: {
  xdg.configFile."nvim".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nixos-config/users/minh/dotfiles/nvim";

  home.packages = with pkgs; [
    neovim
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

    #go
    gofumpt
    gomodifytags
    impl
    delve
  ];
}
