tput setaf 2
echo "################################################################"
echo "################### Apply personal settings (exported with dconf dump / > gnome-settings.dmp)"
echo "################################################################"
tput sgr0
# dconf load -f /org/gnome/ < $installed_dir/gnome-settings.dmp
dconf load -f / < $INST_DIR/configs/gnome-settings.dmp
echo