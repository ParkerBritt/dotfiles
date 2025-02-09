{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        # programming
        # python311Full
        # python311Packages.pip
        # python311Packages.uv
        # pipx
        poetry
        libgcc
        gcc
        cmake
        gnumake
        boost
        clang-tools
        nginx
        mongosh
        nodejs_22
        uv

        # npm
        nodePackages.live-server
        nodePackages.browser-sync
    ];
}
