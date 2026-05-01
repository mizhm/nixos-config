{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    which
    obs-studio
    google-chrome
    obsidian
    wl-clipboard
    pear-desktop
    jetbrains.datagrip
    jetbrains.goland
    # jetbrains.rust-rover
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
    libpcap
    libpcap.lib

    # dev
    lua
    buf
    go
    inputs.zig.packages.${pkgs.system}.default
    (inputs.zls.packages.${system}.default.overrideAttrs (old: {
      doCheck = false;
      doInstallCheck = false;
    }))
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
    awscli2
    terraform
    android-tools

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
    nmap
    # python312Packages.dirsearch
  ];
}
