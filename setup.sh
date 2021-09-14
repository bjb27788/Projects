#!/bin/bash
apt-get update
apt-get install libusb-1.0
wget https://github.com/kitware?cmake?releases/download/v3.21.2/cmake-3.21.2.tar.gz
cd Downloads
tar -xvf cmake-3.21.2.tar.gz
./bootstrap && make && sudo make install
apt-get install git
git clone https://github.com/f5oeo/rpitx
cd rpitx
./install.sh
git clone https://github.com/keenerd/rtl-sdr
mkdir build
cmake ../ -DINSTALL_UDEV_RULES=ON
./bootstrap && make && sudo make install


### dont use sudo in the file, don't use cd commands instead use the absolute file path to what needs to be ran; cd Downloads - remove will download to 
### home directory. CHMOD 755 to make this file executable when finished, 
