{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    neovim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    git
    lunarvim
    xclip
    fastfetch
    alacritty
    fish
    starship
    wget
    trash-cli
    fastfetch
    eza
    unzip
    zellij
    yazi
  ];
}
