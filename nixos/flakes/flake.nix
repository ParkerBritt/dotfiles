{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
  	nixosConfiguration.nixos = nixpkgs.lib.nixosSystem {
		modules = [

		];

	  environment.systemPackages = with nixpkgs; [
	    neovim
	    lunarvim
	    hyprland
	    git
	    stow
	    alacritty
	    fish
	    starship
	    wget
	    trash-cli
	    gnome.gdm
	    fastfetch
	    eza
	  ];
	};
  };
}
