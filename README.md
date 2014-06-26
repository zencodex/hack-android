hack-android
============

适用于linux和mac osx平台。

### 工具简介

- apktool/ apk的反编译，编译工具，代码为smali格式

- signtool 签名工具，命令为 signed.sh yours.apk，生成yours-signed.apk

- dex2jar 将apk中的classes.dex 转换成jar包，然后通过JD-GUI 分析代码，转换出的java代码有一定的误差。

- JD-GUI.app 查看jar包的java代码，此为Mac OSX 平台

- jd-gui-linux 同上，此为linux平台

- baksmali 可以合并，拆分优化过的odex和apk。

- class-dump-z 分析 iOS object c的定义。

- jbe 类似JD-GUI的反编译工具，java class文件的字节码编辑工具，可以查看和修改class文件。

- arm-bin arm CPU编译好的小工具集，比如busybox，tcpdump等，可直接adb push到android手机中，用于调试。
