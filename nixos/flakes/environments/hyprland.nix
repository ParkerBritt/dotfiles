{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        gnome.gdm
        hyprland
    ];

    programs.hyprland.enabled = true;
    services.xserver.displayManager.gdm.enable = true;
}
