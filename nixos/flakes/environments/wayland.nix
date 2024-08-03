{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    rofi-wayland
    # glibcLocales
    waybar
    pavucontrol
    swww
    swaynotificationcenter 
  ];
}
