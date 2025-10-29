{pkgs, ...}: {
  home.packages = with pkgs; [
    which
    wl-clipboard
    youtube-music
    jetbrains.datagrip
    jetbrains.goland
    jetbrains.pycharm-professional
    jetbrains.rust-rover
    google-chrome
    playerctl
    pavucontrol
    discord

    # dev
    go
    rustc
    rust-analyzer
    nodejs
    cargo
    gcc
    python3
    jq
    yq
    bun
    devenv
    qwen-code
    go-task
    postman
    yaak

    # util
    eza
    fd
    fzf
    stylua
    lazygit
    ripgrep
    imagemagick
    cliphist
    sunsetr

    #tool
    httpx
    nuclei
    subfinder
    naabu
  ];
}
