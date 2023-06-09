function connectvpn() {
    sudo openvpn --config "$1" --auth-user-pass /etc/openvpn/surfshark-credentials.txt
}
function _complete_vpn_files() {
    local word="${COMP_WORDS[COMP_CWORD]}"
    local files=(/etc/openvpn/surfshark/*.ovpn)
    COMPREPLY=($(compgen -W "${files[*]}" -- "${word}"))
}
complete -F _complete_vpn_files connectvpn

