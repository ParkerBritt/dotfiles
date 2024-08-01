{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        fish
    ];
    programs.fish.enable = true;

    # login shell method
    users.users.parker.shell= pkgs.fish;

    # interactive shell method
    # programs.bash = {
    #   interactiveShellInit = ''
    #     if [[ $(${pkgs.procps}/bin/ps --no-header --pid=$PPID --format=comm) != "fish" && -z ''${BASH_EXECUTION_STRING} ]]
    #     then
    #       shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=""
    #       exec ${pkgs.fish}/bin/fish $LOGIN_OPTION
    #     fi
    #   '';
    # };
}
