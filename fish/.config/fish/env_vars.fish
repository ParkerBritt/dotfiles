# PATH
if not contains "$HOME/.local/bin" $PATH
    set -gx PATH $HOME/.local/bin $HOME/bin $PATH
end
set -gx PATH /opt/hfs19.5.303/bin $PATH

if test -f ~/.config/fish/credentials.fish
    source ~/.config/fish/credentials.fish
end

set -gx EDITOR nvim
set -gx OPENSSL_ia32cap ~0x200000200000000 # titanfall2 fix
