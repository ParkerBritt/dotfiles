{ config, pkgs, ... }:

{
  home.username = "parker";
  home.homeDirectory = "/home/parker";

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    cowsay
    glow
  ];

  programs.git = {
    enable = true;
    userName = "parker";
    userEmail = "parker@parkerbritt.com";
  };


  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.05";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
