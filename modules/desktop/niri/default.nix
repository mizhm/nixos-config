{pkgs, ...}: {
  programs.dms-shell = {
    enable = true;
    systemd.enable = true;
    enableDynamicTheming = true;
  };

  programs.dconf.enable = true;

  services = {
    displayManager.dms-greeter = {
      enable = true;
      compositor.name = "niri";

      configHome = "/home/minh";

      configFiles = [
        "/home/minh/.config/DankMaterialShell/settings.json"
      ];

      quickshell.package = pkgs.quickshell;
    };

    greetd.settings = {
      initial_session = {
        user = "minh";
        command = "niri-session";
      };
    };

    displayManager.autoLogin.enable = false;

    gnome.gnome-keyring.enable = true;
  };

  programs.niri.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-gnome
    ];
    config = {
      common = {
        default = ["gtk"];
      };
      niri = {
        default = [
          "gnome"
          "gtk"
        ];
        "org.freedesktop.impl.portal.ScreenCast" = ["gnome"];
        "org.freedesktop.impl.portal.Screenshot" = ["gnome"];
      };
    };
  };

  environment = {
    systemPackages = with pkgs; [
      # fuzzel
      # waybar
      # swaylock
      # swayidle
      # swww
      # swaynotificationcenter
      # swaybg
      nemo-with-extensions
      grim
      xwayland-satellite
      quickshell
      whitesur-icon-theme
      bibata-cursors
      glib
      gsettings-desktop-schemas
    ];

    sessionVariables = {
      NIXOS_OZONE_WL = "1";
      XDG_CURRENT_DESKTOP = "niri";
      XDG_SESSION_DESKTOP = "niri";
      ANKI_WAYLAND = "1";
      XDG_SESSION_TYPE = "wayland";
      MOZ_ENABLE_WAYLAND = "1";
      ELECTRON_OZONE_PLATFORM_HINT = "auto";
      CLUTTER_BACKEND = "wayland";
      QT_QPA_PLATFORM = "wayland;xcb";
      QT_QPA_PLATFORMTHEME = "gtk3";
      QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
      SDL_VIDEODRIVER = "wayland";
      GTK_USE_PORTAL = 1;
      GTK_IM_MODULE = "fcitx";
      QT_IM_MODULES = "wayland;fcitx;ibus";
      XCURSOR_THEME = "Bibata-Original-Ice";
      XCURSOR_SIZE = "24";
      XDG_ICON_DIR = "${pkgs.whitesur-icon-theme}/share/icons/WhiteSur";
      QS_ICON_THEME = "WhiteSur";
    };
  };
}
