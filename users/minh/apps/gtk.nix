{pkgs, ...}: {
  gtk = {
    enable = true;

    iconTheme = {
      name = "WhiteSur";
      package = pkgs.whitesur-icon-theme;
    };

    cursorTheme = {
      name = "Bibata-Original-Ice";
      package = pkgs.bibata-cursors;
      size = 24;
    };
  };
}
