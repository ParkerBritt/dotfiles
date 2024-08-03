{ config, pkgs, ... }:
{
  # install packages
  environment.systemPackages = with pkgs; [
    neovim
    stow
    git
    lunarvim
    fastfetch
    alacritty
    starship
    wget
    trash-cli
    fastfetch
    zellij
    yazi
    zoxide
    gparted
    dwt1-shell-color-scripts
    du-dust
    discord
    # shell_gpt
    btop
    libqalculate
    kitty

    # shell
    eza
    fzf

    # utility
    jq
    unzip
    xclip
    libnotify
  ];
}

