{
  description = "castlead NixOS flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.11";
    home-manager.url = "github:nix-community/home-manager/release-23.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nixpkgs, home-manager, ... }: 
  let 
    lib = nixpkgs.lib;
   
    system = "x86_64-linux";

    pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
          allowUnfreePredicate = (_: true);
        };
    };
  in {
    nixosConfigurations = {
      castlead = lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          inherit pkgs;
        };
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.davo = import ./modules/home/davo.nix;
          }
        ];
      };
    };
  };

}
