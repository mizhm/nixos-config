{...}: {
  xdg.configFile."ghostty".source = ../dotfiles/ghostty;
  xdg.terminal-exec = {
    enable = true;
    settings.default = ["ghostty.desktop"];
  };
}
