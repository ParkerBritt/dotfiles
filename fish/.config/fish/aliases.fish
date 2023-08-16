alias la='ls -a'
alias logout='qdbus org.kde.ksmserver /KSMServer logout 0 0 0'
alias ll='exa -alh'
alias llatest='exa -alh -s created -r'
alias vim='nvim'
alias top='bpytop'
alias fetch='fastfetch --logo $HOME/.config/fastfetch/logos/arch.txt'
alias ..='cd ..'
alias ls='exa'
alias files='nohup thunar > /dev/null 2>&1 &'
alias vpn="sudo wg"
alias vpn-on="sudo wg-quick up uk-lon"
alias vpn-off="sudo wg-quick down uk-lon"
alias calc="qalc"
alias yay="yay --color always"
alias clip="xsel -b"
alias cal="calcure"
alias dust-sum="dust -bd 0"

alias bar-open "eww open bar -c ~/.config/eww/bar"
alias bar-close "eww close bar -c ~/.config/eww/bar"

# backup
alias back-snapshot="restic -r /mnt/backup-drive/restic-backup/ snapshots"
