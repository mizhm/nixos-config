{config, ...}: {
  xdg.configFile."ghostty".source =
    config.lib.file.mkOutOfStoreSymlink "/home/minh/nixos-config/users/minh/dotfiles/ghostty";
  xdg.terminal-exec = {
    enable = true;
    settings.default = ["ghostty.desktop"];
  };
}
