{ pkgs, ... }:
{
    imports = [
        ./wayland.nix
    ];
    environment.systemPackages = with pkgs; [
        hyprland
        gdm
        wayland
        hyprpaper
        wl-clipboard
        ags
        tofi
    ];

    programs.hyprland = {
        enable = true;
        xwayland.enable = true;
    };
    # wayland.windowManager.hyprland.enable = true;
    # programs.hyprland.enabled = true;
    services.xserver.displayManager.gdm.enable = true;
    services.xserver.displayManager.gdm.wayland = true;

    environment.sessionVariables = {
        # If your cursor becomes invisible
        WLR_NO_HARDWARE_CURSORS = "1";
        # Hint electron apps to use wayland
        NIXOS_OZONE_WL = "1";
    };

}
