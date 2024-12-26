{ config, pkgs, ... }:
{

  imports =
  [
    ./podman.nix
  ];

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
    vlc
    libreoffice
    moonlight-qt

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
    gimp
    lxappearance
    protonvpn-gui
    qbittorrent
    openvpn
    wireguard-tools
    networkmanagerapplet
    zed-editor

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
    cliphist
    exiftool
    imv
    bindfs
    tldr
    imagemagick
    ffmpeg-full
    vesktop
    polkit
    udiskie
    peek
    tree

    # hyprland
    pyprland

    # nix
    # nix-ld
    nix-index

    # theming
    awf
    nwg-look

    # programming
    python311Full
    python311Packages.pip
    pipx
    poetry
    libgcc
    gcc
    cmake
    gnumake
    boost
    clang-tools
    nginx

    # npm
    nodePackages.live-server
    nodePackages.browser-sync
];


  services.udisks2.enable = true;
  programs.dconf.enable = true;
  security.polkit.enable = true;
  # allow standard binaries to run in nix
  programs.nix-ld.enable = true;
  programs.steam.enable = true;
  # virtualisation.docker.enable = true;

  # flatpak repo setup
  services.flatpak.enable = true;
  systemd.services.flatpak-repo = {
  wantedBy = [ "multi-user.target" ];
  path = [ pkgs.flatpak ];
  script = ''
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  '';
  };

}

