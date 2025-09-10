{
  config,
  pkgs,
  inputs,
  ...
}: {
  users.users.minh = {
    shell = pkgs.fish;
    isNormalUser = true;
    description = "minh";
    extraGroups = ["networkmanager" "wheel" "docker"];
  };

  environment = {
    shells = [pkgs.fish];

    systemPackages = with pkgs; [
      vim
      wget
      git
      anki
      ghostty
      fastfetch
      unzip
      fish
    ];
  };

  home-manager.users.minh = {
    home = rec {
      inherit (config.system) stateVersion;
      username = "minh";
      homeDirectory = "/home/${username}";
    };

    _module.args = {inherit inputs;};

    imports = [
      ./apps
      ./packages
    ];
  };
}
