{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    neovim
    stow
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
    fzf
    rofi
    zoxide
  ];
}
