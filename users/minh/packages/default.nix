{
  config,
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    which
    wl-clipboard
  ];
}
