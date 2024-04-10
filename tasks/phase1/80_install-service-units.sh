echo === configure service units ===
for service in `ls $OS_SETUP_DIR/src/system-services`; do
	sudo cp $OS_SETUP_DIR/src/system-services/$service /etc/systemd/system/
	sudo chmod +x /etc/systemd/system/$service
done
sudo systemctl daemon-reload
for service in `ls $OS_SETUP_DIR/src/system-services`; do
	sudo systemctl enable $service
done
