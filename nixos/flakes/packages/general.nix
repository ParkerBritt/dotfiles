{ config, pkgs, ... }:
{
  # install packages
  environment.systemPackages = with pkgs; [
    # gui
    alacritty
    gparted
    discord
    shell-gpt
    kitty
    spotify
    signal-desktop

    # shell tool
    du-dust
    btop
    fastfetch
    dwt1-shell-color-scripts
    eza
    fzf
    neovim
    stow
    git
    zellij
    starship
    wget
    trash-cli
    fastfetch
    yazi
    zoxide
    lunarvim
    libqalculate

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

    # nix
    # nix-ld

    # programming
    python311Full
    libgcc
    gcc
    cmake
    gnumake
    boost
  ];

  programs.dconf.enable = true;
  # allow standard binaries to run in nix
  programs.nix-ld.enable = true;
}

