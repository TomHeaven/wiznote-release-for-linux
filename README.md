# 为知笔记Linux版


为知笔记官方停止了Linux版二进制程序的发布，仅提供源代码。为了方便大家在Linux上使用位置笔记，创建此项目，用于发布本人编译的``为知笔记Linux版``。

## 版本信息

| 版本 | 编译时间 |
|:--:|:--:|
|5.7.1 | 2017-5-20 |

## 依赖项
要使用为知笔记，必须安装qt-5。

+ 下载[qt-5.7](http://download.qt.io/official_releases/qt/5.7/5.7.0/qt-opensource-linux-x64-5.7.0.run)
+ 安装qt-5.7.0：终端中执行

```
chmod +x qt-opensource-linux-x64-5.7.0.run
sudo ./qt-opensource-linux-x64-5.7.0.run
```
将qt-5安装到默认的``/opt``目录下。

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

## 关于中文输入法支持

+ 安装完成后，需要注销或者重启系统为知笔记才能使用fcitx中文输入法。
+ 如果不想重启系统，不要从桌面快捷方式启动为知笔记，而在终端中运行``wiznote``启动。否则中文输入法不可用。
<<<<<<< HEAD
+ Ubuntu系统上，建议将为知笔记锁定到启动器来启动。否则也可能偶发中文输入法不可用的问题。
=======
>>>>>>> c53b24119e0e3becb2a76292497eefe2f54e4da7

## 调试
如果安装完成后，双击桌面快捷方式没有启动为知笔记，在终端中执行
```
wiznote
```
可以得到调试信息。
