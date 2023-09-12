if not contains "$HOME/.local/bin" $PATH
    set -gx PATH $HOME/.local/bin $HOME/bin $PATH
end

if test -f ~/.config/fish/credentials.fish
    source ~/.config/fish/credentials.fish
end

set -gx EDITOR nvim
