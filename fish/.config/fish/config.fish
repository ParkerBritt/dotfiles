set fish_greeting
source $HOME/.config/fish/env_vars.fish

# User specific environment

if status is-interactive
    # Commands to run in interactive sessions can go here
    source $HOME/.config/fish/aliases.fish
    starship init fish | source

    colorscript --exec panes

    source /usr/share/autojump/autojump.fish

end

