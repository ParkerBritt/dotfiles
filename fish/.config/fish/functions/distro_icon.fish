function distro_icon
    set -g distro_name $(cat /etc/os-release | grep '^ID=' | cut -d'=' -f2)
    set -g distro_keys     'nixos' 'fedora' 'arch'
    set -g distro_values   ''     ''      '󰣇'

    function _distro_map_string
        set -l key $argv[1]
        if set -l index (contains -i -- $key $distro_keys)
            echo $distro_values[$index]
        else
            echo ""
        end
    end

    echo $(_distro_map_string $distro_name)
    functions -e _distro_map_string
end




