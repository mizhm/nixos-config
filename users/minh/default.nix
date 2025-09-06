{
  config,
  pkgs,
  inputs,
  ...
}: {
  users.users.minh = {
    shell = pkgs.fish;
    isNormalUser = true;
    description = "minh";
    extraGroups = ["networkmanager" "wheel" "docker"];
  };

  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  environment = {
    shells = [pkgs.fish];

    systemPackages = with pkgs; [
      vim
      wget
      git
      anki
      ghostty
      fastfetch
      git
      unzip
      fish
    ];

    gnome.excludePackages = with pkgs; [
      gnome-maps
      gnome-music
      gnome-tour
      gnome-text-editor
      gnome-user-docs
      gnome-contacts
    ];
  };

  home-manager.users.minh = {
    home = rec {
      inherit (config.system) stateVersion;
      username = "minh";
      homeDirectory = "/home/${username}";
    };

    _module.args = {inherit inputs;};

    imports = [
      ./apps
      ./packages
    ];
  };
}
