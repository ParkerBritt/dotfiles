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
    shell-gpt
    btop
    libqalculate
    kitty
    spotify

    # shell
    eza
    fzf

    # utility
    jq
    unzip
    xclip
    libnotify
    hdparm
    glib
    light
    pamixer
    brightnessctl

    # programming
    python311Full
    libgcc
    gcc
    cmake

    signal-desktop
  ];

  programs.dconf.enable = true;
}

