echo === setting input methods ===
sudo apt install fcitx5-mozc -y
im-config -n fcitx5

if [ "$GTK_IM_MODULE" = "" ]; then
	echo "# Following code is added by $OS_SETUP_DIR/tasks/install-input-method.sh">> ~/.profile
	export GTK_IM_MODULE=fcitx
	echo "export GTK_IM_MODULE=fcitx">> ~/.profile
	echo "">> ~/.profile
fi
if [ "$QT_IM_MODULE" = "" ]; then
	echo "# Following code is added by $OS_SETUP_DIR/tasks/install-input-method.sh">> ~/.profile
	export QT_IM_MODULE=fcitx
	echo "export QT_IM_MODULE=fcitx">>~/.profile
	echo "">> ~/.profile
fi
if [ "$XMODIFIERS" = "" ]; then
	echo "# Following code is added by $OS_SETUP_DIR/tasks/install-input-method.sh">> ~/.profile
	export XMODIFIERS=@im=fcitx
	echo "export XMODIFIERS=@im=fcitx">>~/.profile
	echo "">> ~/.profile
fi

sudo cp $OS_SETUP_DIR/src/input-setting/capslock_conversion.hwdb /etc/udev/hwdb.d/
sudo systemd-hwdb update
sudo udevadm trigger
