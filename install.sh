#/bin/sh
echo "Note you need to install qt-opensource-linux-x64-5.7.0.run before you can install WizNote!"
echo "Visit　https://download.qt.io/official_releases/qt/5.7/5.7.0/qt-opensource-linux-x64-5.7.0.run.mirrorlist to download and install qt5."
echo "请先安装qt-opensource-linux-x64-5.7.0.run，再运行此脚本，否则为知笔记无法运行。"
echo "访问https://download.qt.io/official_releases/qt/5.7/5.7.0/qt-opensource-linux-x64-5.7.0.run.mirrorlist以下载安装qt5。"


# config
INSTALL_DIR=/opt/wiznote
DESKTOP_DIR=~/桌面

# copy files
sudo mkdir -p $INSTALL_DIR/bin/
sudo cp wiznote $INSTALL_DIR/bin/
sudo cp wiznote.png $INSTALL_DIR/bin/
sudo cp share.tar.gz $INSTALL_DIR/
sudo tar -zxvf $INSTALL_DIR/share.tar.gz -C $INSTALL_DIR
sudo rm -f $INSTALL_DIR/share.tar.gz

sudo cp -f wiznote.desktop /usr/share/applications/
cp -f wiznote.desktop $DESKTOP_DIR/wiznote.desktop


# fix privilleges
sudo chmod a+x  $DESKTOP_DIR/wiznote.desktop
sudo chmod a+x  $INSTALL_DIR/bin/wiznote

# fix fcitx Chinese Input method
sudo cp libfcitxplatforminputcontextplugin.so /opt/Qt5.7.0/Tools/QtCreator/lib/Qt/plugins/platforminputcontexts/libfcitxplatforminputcontextplugin.so
sudo cp libfcitxplatforminputcontextplugin.so /opt/Qt5.7.0/5.7/gcc_64/plugins/platforminputcontexts/

# fix qt5 library path
echo "export LD_LIBRARY_PATH=/opt/Qt5.7.0/5.7/gcc_64/lib:\$LD_LIBRARY_PATH" | sudo tee -a /etc/profile

# create links for terminal
sudo ln -s -f  $INSTALL_DIR/bin/wiznote /usr/bin/wiznote

echo "Installation Finished."
echo "安装完成。"

