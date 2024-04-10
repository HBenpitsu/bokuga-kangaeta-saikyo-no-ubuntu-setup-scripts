echo === restoaring config files onto ~/.config ===
for app in `ls $OS_SETUP_DIR/src/config`; do
	rm ~/.config/$app -rf
	cp $OS_SETUP_DIR/src/config/$app ~/.config -rf
done
