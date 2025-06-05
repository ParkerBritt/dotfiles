{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        # python311Full
        # python311Packages.pip
        # python311Packages.uv
        # pipx
        # poetry
        libgcc
        zed-editor
        gcc
        cmake
        gnumake
        boost
        clang-tools
        # nginx
        # mongosh
        nodejs_22
        uv
        # SDL2

        # npm
        nodePackages.live-server
        nodePackages.browser-sync
    ];
}
