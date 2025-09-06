{}: {
  programs = {
    direnv = {
      enable = true;
      enableFishInegration = true; # see note on other shells below
      nix-direnv.enable = true;
    };
  };
}
