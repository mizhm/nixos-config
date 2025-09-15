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
      swaynotificationcenter
      swaybg
      grim
      xdg-desktop-portal-gtk
      xwayland-satellite
    ];

    sessionVariables = {
      NIXOS_OZONE_WL = "1";
      ANKI_WAYLAND = "1";
      XDG_SESSION_TYPE = "wayland";
      MOZ_ENABLE_WAYLAND = "1";
      ELECTRON_OZONE_PLATFORM_HINT = "auto";
      CLUTTER_BACKEND = "wayland";
      DISPLAY = null;
      GDK_BACKEND = "wayland,x11";
      QT_QPA_PLATFORM = "wayland;xcb";
      QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
      SDL_VIDEODRIVER = "wayland";
    };
  };
}
