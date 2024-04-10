echo === install tar packages ===
for package in `ls $OS_SETUP_DIR/src/tar-packages`; do
	sudo tar -xvf $OS_SETUP_DIR/src/tar-packages/$package -C /usr/local/share
done
