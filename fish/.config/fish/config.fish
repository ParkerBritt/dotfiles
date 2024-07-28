set fish_greeting
source $HOME/.config/fish/env_vars.fish

# Set the cursor shapes for the different vi modes.
set fish_cursor_default     block
set fish_cursor_insert      line       blink
set fish_cursor_replace_one underscore

# User specific environment

if status is-interactive
    xset r rate 150 25
    echo "hello world"

    # Commands to run in interactive sessions can go here
    source $HOME/.config/fish/aliases.fish
    source $HOME/.config/fish/keybinds.fish

    # zellij
    set -gx ZELLIJ_AUTO_EXIT true
    eval (zellij setup --generate-auto-start fish | string collect)

    starship init fish | source


    # rand-colorscript

    # source /usr/share/autojump/autojump.fish

    # start tmux if not in session
    # if not set -q TMUX
        # exec tmux
    # end

    # zoxide
    zoxide init fish | source
end


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# eval /usr/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

