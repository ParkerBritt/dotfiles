{ config, pkgs, ... }:

{
  home.username = "parker";
  home.homeDirectory = "/home/parker";

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    cowsay
  ];

  programs.git = {
    enable = true;
    userName = "parker";
    userEmail = "parker@parkerbritt.com";
  };

   
  # theme
    gtk = {
      enable = true;
      theme = {
        name = "Colloid-Dark";
        package = pkgs.colloid-gtk-theme.override {
        # no current overrides
        # tweaks = [ "catppuccin" ];
        };
      };
      cursorTheme = {
        package = pkgs.gnome.adwaita-icon-theme;
        name = "Adwaita";
      };
      iconTheme = {
        package = pkgs.papirus-icon-theme;
        name = "Papirus-Dark";
      };
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
