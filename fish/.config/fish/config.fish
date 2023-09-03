set fish_greeting
source $HOME/.config/fish/env_vars.fish

# Set the cursor shapes for the different vi modes.
set fish_cursor_default     block
set fish_cursor_insert      line       blink
set fish_cursor_replace_one underscore

# User specific environment

if status is-interactive
    xset r rate 150 25
    # Commands to run in interactive sessions can go here
    source $HOME/.config/fish/aliases.fish
    starship init fish | source

    rand-colorscript

    source /usr/share/autojump/autojump.fish

end

