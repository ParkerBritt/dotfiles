{

  description = "flake";

  inputs = {
    nixpkgs.url = "nixpkgs/24.05";
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
    };
  };

}
