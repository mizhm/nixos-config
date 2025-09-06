{pkgs, ...}: {
  home.packages = with pkgs; [
    gnome-tweaks

    gnomeExtensions.blur-my-shell
    gnomeExtensions.compact-top-bar
    gnomeExtensions.kimpanel
  ];
}
