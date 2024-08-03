#/usr/bin/env bash
nix-env --delete-generations 14d
nix-store --gc
