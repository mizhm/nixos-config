{...}: {
  xdg.configFile."ghostty".source = ../confs/ghostty;
  xdg.terminal-exec = {
    enable = true;
    settings.default = ["ghostty.desktop"];
  };
}
