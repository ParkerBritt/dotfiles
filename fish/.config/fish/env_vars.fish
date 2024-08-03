# PATH
if not contains "$HOME/.local/bin" $PATH
    set -gx PATH $HOME/.local/bin $HOME/bin $PATH
end
if not contains "$HOME/.cargo/bin" $PATH
    set -gx PATH $HOME/.cargo/bin $PATH
end

set -gx PATH /opt/hfs19.5.605/bin $PATH

# rez
set -gx PATH /home/parker/programs/rez/bin/rez $PATH
# source /home/parker/programs/rez/completion/complete.fish

if test -f ~/.config/fish/credentials.fish
    source ~/.config/fish/credentials.fish
end

set -gx EDITOR lvim
set -gx OPENSSL_ia32cap ~0x200000200000000 # titanfall2 fix

set -gx XDG_DATA_DIRS /home/parker/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:$XDG_DATA_DIRS
# set -gx XDG_DATA_DIRS /home/parker/.nix-profile/share/applications:/home/parker/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:$XDG_DATA_DIRS

set -gx P4CONFIG /home/parker/.config/Perforce/p4config
set -gx P4IGNORE /home/parker/Perforce/y3-film/pipeline/perforce/p4ignore

set -gx film_root /home/parker/Perforce/y3-film

# for nix package manager
# set -gx LOCALE_ARCHIVE /lib/locale/locale-archive
# set -gx NIXPKGS_ALLOW_UNFREE 1

# rofi
set -gx rofi_background_opacity 0.5

# distro icon
set -gx DISTRO_ICON $(distro_icon)
