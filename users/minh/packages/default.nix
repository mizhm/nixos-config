{pkgs, ...}: {
  home.packages = with pkgs; [
    which
    wl-clipboard
    youtube-music
    jetbrains.datagrip
    jetbrains.goland
    devenv
    qwen-code

    # dev
    go
    rustc
    nodejs
    cargo
    gcc
    python3
    jq
    yq

    # util
    eza
    fd
    fzf
    stylua
    lazygit
    ripgrep
    imagemagick
  ];
}
