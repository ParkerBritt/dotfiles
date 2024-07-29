{ config, pkgs, ... }:
{
  # install packages
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
    gparted
    wt1-shell-color-scripts
    dust
    discord
  ];

  # enable packages
  programs.fish.enable = true;
}

