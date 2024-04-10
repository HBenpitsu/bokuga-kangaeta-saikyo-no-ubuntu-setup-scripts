echo === installing gnome shell extensions ===
for extension in `ls $OS_SETUP_DIR/src/gnome-extensions`; do
	echo installing $OS_SETUP_DIR/src/gnome-extensions/$extension
	gnome-extensions install $OS_SETUP_DIR/src/gnome-extensions/$extension
	extension_name=(${extension//./ })
	# unzip $OS_SETUP_DIR/src/gnome-extensions/$extension -d ~/.local/share/gnome-shell/extensions/$extension_name
done
