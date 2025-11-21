function _install_base() {

    echo
    tput setaf 2
    echo "########################################################################"
    echo "################### Install basic packages"
    echo "########################################################################"
    tput sgr0
    echo

    list=(
        git
        meld
        ripgrep
        eza
        base-devel 
        reflector 
        bash-completion 
        micro 
        linux-headers
        fzf
        kitty
        alacritty
        btop
        gum
        findutils
        fastfetch
        zoxide
    )

    count=0

    for name in "${list[@]}" ; do
        count=$[count+1]
        tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
        _install_pkg $name
    done
}

_install_base
