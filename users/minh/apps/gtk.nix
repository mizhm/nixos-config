{pkgs, ...}: {
  gtk = {
    enable = true;
    colorScheme = "dark";

    iconTheme = {
      name = "WhiteSur";
      package = pkgs.whitesur-icon-theme;
    };

    cursorTheme = {
      name = "Bibata-Original-Ice";
      package = pkgs.bibata-cursors;
      size = 24;
    };

    theme = {
      name = "WhiteSur-Dark";
      package = pkgs.whitesur-gtk-theme;
    };

    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
      gtk-decoration-layout = "menu:";
    };
  };
}
