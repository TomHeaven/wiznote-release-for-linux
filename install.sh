#/bin/sh

# config
INSTALL_DIR=/opt/wiznote
DESKTOP_DIR=~/桌面

# copy files
sudo mkdir -p $INSTALL_DIR/bin/
sudo cp -f WizNote-2.7.9-x86_64.AppImage $INSTALL_DIR/bin/
sudo cp -f wiznote $INSTALL_DIR/bin/
sudo cp -f wiznote.png $INSTALL_DIR/bin/

sudo cp -f wiznote.desktop /usr/share/applications/
cp -f wiznote.desktop $DESKTOP_DIR/wiznote.desktop

# fix privilleges
sudo chmod a+x  $DESKTOP_DIR/wiznote.desktop
sudo chmod a+x  $INSTALL_DIR/bin/wiznote
sudo chmod a+x  $INSTALL_DIR/bin/WizNote-2.7.9-x86_64.AppImage

# create links for terminal
sudo ln -s -f  $INSTALL_DIR/bin/wiznote /usr/bin/wiznote

echo "Installation Finished."
echo "安装完成。"

