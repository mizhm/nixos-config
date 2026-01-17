{config, ...}: {
  xdg.configFile."mpv".source =
    config.lib.file.mkOutOfStoreSymlink "/home/minh/nixos-config/users/minh/dotfiles/mpv";
}
