function _install_fonts() {

    echo
    tput setaf 2
    echo "########################################################################"
    echo "################### Install basic packages"
    echo "########################################################################"
    tput sgr0
    echo

    list=(
        ttf-fira-sans  
        ttf-fira-code  
        ttf-firacode-nerd
        otf-font-awesome
        ttf-cascadia-code
        ttf-jetbrains-mono
        ttf-jetbrains-mono-nerd
        ttf-hack
        ttf-hack-nerd
        ttf-roboto-mono

    
    )

    count=0

    for name in "${list[@]}" ; do
        count=$[count+1]
        tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
        _install_pkg $name
    done
}

_install_fonts