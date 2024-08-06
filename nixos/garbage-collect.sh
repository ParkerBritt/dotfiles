#/usr/bin/env bash
nix-env --delete-generations 7d
nix-store --gc
