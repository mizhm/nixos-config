{pkgs, ...}: {
  # services.displayManager.sddm = {
  #   enable = true;
  #   wayland.enable = true;
  # };

  programs.niri.enable = true;

  environment = {
    systemPackages = with pkgs; [
      fuzzel
      waybar
      swaylock
      swayidle
      swww
      grim
      xdg-desktop-portal-gtk
    ];
    sessionVariables = {
      NIXOS_OZONE_WL = "1";
      XDG_SESSION_TYPE = "wayland";
      MOZ_ENABLE_WAYLAND = "1";
    };
  };
}
