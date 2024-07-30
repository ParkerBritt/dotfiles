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
    dwt1-shell-color-scripts
    du-dust
    discord
    # shell-gpt
    btop
  ];

  # enable packages
  programs.fish.enable = true;
}

