echo === installing deb packages ===
for package in `ls $OS_SETUP_DIR/src/deb-packages`; do
	sudo apt install $OS_SETUP_DIR/src/deb-packages/$package -y
done
