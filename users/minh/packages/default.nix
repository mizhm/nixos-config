{pkgs, ...}: {
  home.packages = with pkgs; [
    which
    wl-clipboard
    youtube-music
    jetbrains.datagrip
    jetbrains.goland
    jetbrains.pycharm-professional
    jetbrains.rust-rover
    zed-editor
    google-chrome
    playerctl
    pavucontrol
    discord

    # dev
    lua
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
    luajitPackages.luarocks-nix
    antigravity-fhs

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
    gnumake

    #tool
    httpx
    dnsx
    nuclei
    subfinder
    naabu
    gospider
    sqlmap
    nmap
    python312Packages.dirsearch
  ];
}
