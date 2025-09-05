{ pkgs
, config
, ...
}: {
  xdg.configFile."ghostty".source = ../confs/ghostty;

  home.packages = with pkgs; [
  ];
}
