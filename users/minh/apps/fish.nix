{ pkgs
, config
, ...
}: {
  xdg.configFile."fish".source = ../confs/fish;
}
