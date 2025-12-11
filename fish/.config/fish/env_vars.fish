# PATH
if not contains "$HOME/.local/bin" $PATH
    set -gx PATH $HOME/.local/bin $HOME/bin $PATH
end
if not contains "$HOME/.cargo/bin" $PATH
    set -gx PATH $HOME/.cargo/bin $PATH
end

set -gx PATH /opt/hfs20.5.332/bin $PATH

# rez
set -gx PATH /home/parker/programs/rez/bin/rez $PATH
# source /home/parker/programs/rez/completion/complete.fish

if test -f ~/.config/fish/credentials.fish
    source ~/.config/fish/credentials.fish
end

set -gx EDITOR nvim
set -gx OPENSSL_ia32cap ~0x200000200000000 # titanfall2 fix

set -gx XDG_DATA_DIRS /home/parker/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:$XDG_DATA_DIRS

set -gx P4CONFIG /home/parker/.config/Perforce/p4config
set -gx P4IGNORE /home/parker/Perforce/y3-film/pipeline/perforce/p4ignore

set -gx film_root /home/parker/Perforce/y3-film

# for nix package manager
set -gx NIXPKGS_ALLOW_UNFREE 1

# rofi
set -gx rofi_background_opacity 0.5

# distro icon
set -gx DISTRO_NAME $(cat /etc/os-release | grep '^ID=' | cut -d'=' -f2)
set -gx DISTRO_ICON $(distro_icon)

# maya dependency bug
set -gx LD_LIBRARY_PATH $LD_LIBRARY_PATH $HOME/maya_fake_env/lib

#usd
set -gx PATH "$HOME/USD/bin" $PATH
set -gx PYTHONPATH "$HOME/USD/lib/python" $PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
