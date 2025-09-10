{pkgs, ...}: {
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  environment.gnome.excludePackages = with pkgs; [
    gnome-maps
    gnome-music
    gnome-tour
    gnome-text-editor
    gnome-user-docs
    gnome-contacts
    geary
  ];

  environment.systemPackages = with pkgs; [
    gnome-tweaks

    gnomeExtensions.blur-my-shell
    gnomeExtensions.compact-top-bar
    gnomeExtensions.kimpanel
  ];
}
