{config, ...}: {
  xdg.configFile."niri".source =
    config.lib.file.mkOutOfStoreSymlink "/home/minh/nixos-config/users/minh/dotfiles/niri";
}
