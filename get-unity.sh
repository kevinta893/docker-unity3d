#!/bin/sh
URL=https://beta.unity3d.com/download/170f0691b973/
PKG=UnitySetup-2018.1.0f2
INSTALL_LOCATION=~/Unity

#install unity and the installer's dependancies
sudo apt-get -y update
sudo apt-get -y install libgtk2.0-0
sudo apt-get -y install libsoup2.4-1
sudo apt-get -y install libarchive13
sudo apt-get -y install libpng12
sudo apt-get -y install libgconf-2-4
wget "$URL/$PKG"
chmod +x $PKG
mkdir -p $INSTALL_LOCATION
yes | ./$PKG --unattended --install-location=$INSTALL_LOCATION


