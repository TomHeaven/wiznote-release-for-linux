# 为知笔记Linux版

`官方又重新开始发布Linux版的二进制程序，因此本项目的功能变成了仅仅提供desktop启动项。`

为知笔记官方停止了Linux版二进制程序的发布，仅提供源代码。为了方便大家在Linux上使用位置笔记，创建此项目，用于发布本人编译的``为知笔记Linux版``。

## 安装为知笔记Linux版

+ 下载项目后， 打开install.sh，修改DESKTOP_DIR配置桌面位置。标准Linux为``~/Desktop``。UbuntuKylin的桌面路径为``~/桌面``。
```
# config
INSTALL_DIR=/opt/wiznote
DESKTOP_DIR=~/桌面
```
+ 给予``install.sh``执行权限。终端切换到项目目录，执行
```
chmod a+x install.sh
```
+ 执行脚本
```
./install.sh
```
输入密码后安装完成，桌面上会出现为知笔记的快捷方式，双击即可正常使用。

