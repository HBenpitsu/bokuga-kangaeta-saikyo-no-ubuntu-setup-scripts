echo === installing desktop entries ===
for entry in `ls $OS_SETUP_DIR/src/desktop-entries`; do
	sudo mkdir /usr/local/share/applications
	sudo cp $OS_SETUP_DIR/src/desktop-entries/$entry /usr/local/share/applications
done
