echo === installing drivers for radeon === 

amdgpu-install --usecase=graphics,opencl --vulkan=amdvlk,pro --opencl=rocr --accept-eula

sudo usermod -a -G render $USER
sudo usermod -a -G video $USER

if [ "`echo $PATH | grep /opt/amdgpu-pro/bin:/opt/amdgpu/bin}`" = "" ]; then
	export PATH=/opt/amdgpu-pro/bin:/opt/amdgpu/bin:$PATH
	echo "# Following code is added by $OS_SETUP_DIR/tasks/install-amdgpu-setting.sh" >> ~/.profile
	echo "export PATH=/opt/amdgpu-pro/bin:/opt/amdgpu/bin:$PATH" >> ~/.profile
	echo "" >> ~/.profile

fi

sudo systemctl enable --now lactd

