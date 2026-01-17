{config, ...}: {
  xdg.configFile."fish".source =
    config.lib.file.mkOutOfStoreSymlink "/home/minh/nixos-config/users/minh/dotfiles/fish";
}
