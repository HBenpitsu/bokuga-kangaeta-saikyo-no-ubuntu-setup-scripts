echo === terminating phase1 ===
cp $OS_SETUP_DIR/src/setup-autostarter.desktop ~/.config/autostart
echo "Exec=bash -c '$OS_SETUP_DIR/SETUP.sh'" >> ~/.config/autostart/setup-autostarter.desktop
echo phase2 > $OS_SETUP_DIR/tasks/current-phase
echo Press Enter-key to reboot
read
sudo reboot
