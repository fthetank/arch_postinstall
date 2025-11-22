function _install_gnome() {

    echo
    tput setaf 2
    echo "########################################################################"
    echo "################### Install basic packages"
    echo "########################################################################"
    tput sgr0
    echo

    list=(
        dconf-editor  
        extension-manager  
        file-roller  
        gnome  
        gnome-tweaks  
        kvantum  
        kvantum-theme-libadwaita-git  
        qt5ct  
        qt6ct
        thunar  
        thunar-archive-plugin  
        thunar-volman
        gnome-shell-extension-dash-to-dock 
        gnome-shell-extension-appindicator
        gnome-shell-extension-clipboard-indicator
        gnome-shell-extension-blur-my-shell
        gnome-shell-extension-forge 
        gnome-shell-extension-space-bar-git
        gnome-shell-extension-just-perfection-desktop 
        gnome-online-accounts

          
    )

    count=0

    for name in "${list[@]}" ; do
        count=$[count+1]
        tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
        _install_pkg $name
    done
}

_install_gnome