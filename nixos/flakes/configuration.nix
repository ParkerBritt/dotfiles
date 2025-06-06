# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware/dell-laptop.nix
      ./firewall.nix
      ./fonts.nix
      ./packages/general.nix
      ./packages/development.nix
      ./packages/fish.nix
      ./packages/options.nix
      ./activation-scripts.nix
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;


  # cursor fix ( can't remember if it actually fixes cursor size)
  services.xserver.dpi = 220;
  services.xserver.upscaleDefaultCursor = true;
  environment.variables = {
    GDK_SCALE = "2.2";
    GDK_DPI_SCALE = "0.4";
    _JAVA_OPTIONS = "-Dsun.java2d.uiScale=2.2";
    QT_AUTO_SCREEN_SCALE_FACTOR = "1";
    XCURSOR_SIZE = "64";
  };

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # enable bluetooth
  hardware.bluetooth = {
      enable = true; # enables support for Bluetooth
      powerOnBoot = true; # powers up the default Bluetooth controller on boot
  };
  services.blueman.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/London";

i18n = {
    supportedLocales = [
        "C.UTF-8/UTF-8"
        "en_US.UTF-8/UTF-8"
    ];
    defaultLocale = "en_US.UTF-8";
    # extraLocaleSettings = {
    #     LC_ADDRESS = "en_US.UTF-8";
    #     LC_IDENTIFICATION = "en_US.UTF-8";
    #     LC_MEASUREMENT = "en_US.UTF-8";
    #     LC_MONETARY = "en_US.UTF-8";
    #     LC_NAME = "en_US.UTF-8";
    #     LC_NUMERIC = "en_US.UTF-8";
    #     LC_PAPER = "en_US.UTF-8";
    #     LC_TELEPHONE = "en_US.UTF-8";
    #     LC_TIME = "en_US.UTF-8";
    # };
};

    # sets /bin to emulate $path
    services.envfs.enable = true; 
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  programs.dconf.profiles.user = {
    databases = [{
      lockAll = true;
      settings = {
        "org/gnome/desktop/interface" = {
          color-scheme = "prefer-dark";
        };
      };
    }];
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.parker = {
    isNormalUser = true;
    description = "Parker";
    extraGroups = [ "networkmanager" "wheel" ];
    # shell = pkgs.fish;
    packages = with pkgs; [
      firefox
    ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

}
