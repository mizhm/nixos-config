{pkgs, ...}: {
  home.packages = with pkgs; [
    which
    obs-studio
    obsidian
    wl-clipboard
    pear-desktop
    jetbrains.datagrip
    jetbrains.goland
    zed-editor
    playerctl
    pavucontrol
    discord
    polkit_gnome
    mpv
    winboat
    freerdp
    libnotify
    microsoft-edge
    libpcap.lib

    # dev
    lua
    buf
    go
    nodejs
    gcc
    python3
    jq
    yq
    bun
    devenv
    go-task
    postman
    luajitPackages.luarocks-nix
    lazydocker
    awscli2
    terraform
    # android-tools

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
