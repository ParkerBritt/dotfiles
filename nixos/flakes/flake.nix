{

  description = "flake";

  inputs = {
    nixpkgs.url = "nixpkgs/24.05";
    home-manager = {
        url = "github:nix-community/home-manager/release-24.05";
        inputs.nixpkgs.follows = "nixpkgs"; # Use the same nixpkgs input as your flake
    };
  };

  outputs = {self,nixpkgs,home-manager, ...}:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
          inherit system;
          modules = [
              ./configuration.nix 
          ];
      };
      kde = lib.nixosSystem {
          inherit system;
          modules = [
              ./configuration.nix 
              ./environments/kde.nix
          ];
      };
      hypr = lib.nixosSystem {
          inherit system;
          modules = [
              ./configuration.nix 
              ./environments/hyprland.nix

              home-manager.nixosModules.home-manager
              {
                home-manager.useGlobalPkgs = true;
                home-manager.useUserPackages = true;

                home-manager.users.parker = import ./home.nix;
              }
          ];
      };
    };
  };

}
