{
  description = "Nixos config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
    	url = "github:nix-community/home-manager";
	inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs:
  {
	nixosConfigurations.mizhm = nixpkgs.lib.nixosSystem {
		specialArgs = {inherit inputs;};
		modules = [
			./configuration.nix
		];
	};
  };
}
