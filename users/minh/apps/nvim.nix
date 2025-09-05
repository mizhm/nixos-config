{ pkgs
, config
, ...
}: {
  xdg.configFile."nvim".source = ../confs/nvim;

  programs.neovim = {
    enable = true;
  };
}
