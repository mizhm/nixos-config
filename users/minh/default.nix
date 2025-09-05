{ config
, pkgs
, lib
, inputs
, ...
}: {
  home-manager.users.minh = {
    home = rec {
      inherit (config.system) stateVersion;
      username = "minh";
      homeDirectory = "/home/${username}";
    };

    _module.args = { inherit inputs; };

    imports = [
      ./apps
    ];
  };
}
