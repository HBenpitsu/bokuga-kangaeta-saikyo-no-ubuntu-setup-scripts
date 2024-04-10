echo === enabling gnome shell extensions ===
for extension in `gnome-extensions list`; do
	echo checking $extension
	#extract extension name
	extension_name=(${extension//@/ })
	# if there are some extension package which has the same name with the extension 
	#    in ./gnome-extensions, enable the extension.
	hit=`ls $OS_SETUP_DIR/src/gnome-extensions|grep $extension_name`
	if [ "$hit" != "" ]; then
		gnome-extensions enable $extension
		echo $extension was enabled 
	else
		echo $extension was ignored
	fi
done
