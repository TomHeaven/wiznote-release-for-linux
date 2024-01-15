#/bin/sh
# prerequests
sudo apt install -y fuse
# config
URL=https://url.wiz.cn/u/linux_new
INSTALL_DIR=/opt/wiznote
DESKTOP_DIR=`xdg-user-dir DESKTOP`
BIN_FILE=wiznote-desktop-linux-x86_64.AppImage
# download wiznote
echo "Downloading wiznote, please wait..."
wget -O $BIN_FILE $URL

# copy files
sudo mkdir -p $INSTALL_DIR/bin/
sudo cp -f $BIN_FILE $INSTALL_DIR/bin/
sudo cp -f wiznote $INSTALL_DIR/bin/
sudo cp -f wiznote.png $INSTALL_DIR/bin/

sudo cp -f wiznote.desktop /usr/share/applications/
cp -f wiznote.desktop $DESKTOP_DIR/wiznote.desktop

# fix privilleges
sudo chmod a+x  $DESKTOP_DIR/wiznote.desktop
sudo chmod a+x  $INSTALL_DIR/bin/wiznote
sudo chmod a+x  $INSTALL_DIR/bin/$BIN_FILE

# create links for terminal
sudo ln -s -f  $INSTALL_DIR/bin/wiznote /usr/bin/wiznote

echo "Installation Finished."
echo "安装完成。"

