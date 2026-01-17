{pkgs, ...}: {
  home.packages = with pkgs; [
    which
    wl-clipboard
    pear-desktop
    jetbrains.datagrip
    jetbrains.goland
    jetbrains.rust-rover
    zed-editor
    google-chrome
    playerctl
    pavucontrol
    discord
    polkit_gnome
    mpv
    winboat
    freerdp

    # dev
    lua
    buf
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
    go-task
    postman
    luajitPackages.luarocks-nix
    antigravity-fhs
    lazydocker

    # util
    eza
    fd
    fzf
    stylua
    lazygit
    ripgrep
    imagemagick
    cliphist
    gnumake

    #tool
    httpx
    dnsx
    nuclei
    subfinder
    naabu
    # gospider
    # sqlmap
    # nmap
    # python312Packages.dirsearch
  ];
}
