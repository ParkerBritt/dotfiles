alias la='ls -a --icons'
alias logout='qdbus org.kde.ksmserver /KSMServer logout 0 0 0'
alias ll='eza -alh --icons'
alias lc='eza -alh -snew --icons'
alias vim='lvim'
alias top='btop'
alias fetch='fastfetch'
alias ..='cd ..'
alias ls='eza --icons'
alias files='nohup thunar > /dev/null 2>&1 &'
alias calc="qalc"
alias yay="yay --color always"
alias clip="xsel -b"
alias python="python3.11"
# alias clip="wl-copy"
alias clip-dir="pwd | clip"
alias cal="calcure"
alias dust-sum="dust -bd 0"
alias banner='figlet -d ~/github/figlet-fonts/ -f "3d"'
alias aliases="vim ~/.config/fish/aliases.fish"
alias yay="yay --nodiffmenu"
alias rec-region="slurp | xargs -I % wf-recorder -f ~/Downloads/screen-record.mp4 -g %"
alias pactivate="source venv/bin/activate.fish"
# alias djv="tev"
alias crash-houdini="killall -SEGV houdini-bin"
alias ftodo="vim /home/parker/Perforce/y3-film/pipeline/todo.txt"
alias peek="/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=peek com.uploadedlobster.peek"
alias keeb="cd ~/github/qmk_firmware/keyboards/lily58/keymaps/parker/"

# Film
alias film="cd ~/Perforce/y3-film/"
alias fpackage="cd ~/Perforce/y3-film/pipeline/packages/2AM/houdini"
alias fdev="cd ~/Perforce/y3-film/pipeline/development/cog_software"
alias ficons="cd ~/Perforce/y3-film/pipeline/development/cog_software/cog_vfx/assets/icons"

# vpn
alias vpn="sudo wg"
alias vpn-on="sudo wg-quick up uk-lon"
alias vpn-off="sudo wg-quick down uk-lon"
alias vpn-list="sudo ls /etc/wireguard"

# mount
alias phone-mount="jmtpfs /mnt/phone"
alias phone-umount="fusermount -u /mnt/phone"

# backup
alias back-remote="restic --repository-file ~/.config/restic/b2-credentials/repository --password-file ~/.config/restic/b2-credentials/key"
alias back-local="restic --repository-file ~/.config/restic/local-credentials/repository --password-file ~/.config/restic/local-credentials/key"

# git
alias gs="git status"

# go up
alias ...='cd ../..'
alias ....='cd ../../..'
