## GUI应用说明

1. 这是使用QTCreator创建的一个图形界面程序

2. 程序中通过qt-plugin插件，引入了两个commLib: mylib, mylibExt

3. 你可以使用docker方式构成镜像，来运行

4. 生成镜像后可以使用如下的脚本，来运行图形化界面
```
# 在宿主机器执行下面的命令，安装x11配置
sudo apt-get install x11-xserver-utils
xhost +
# 然后运行docker镜像
docker run -d \
  -v /etc/localtime:/etc/localtime:ro \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -d  \
  -e LANG=C.UTF-8 \
  -e DISPLAY=unix$DISPLAY \
  -e GDK_SCALE \
  -e GDK_DPI_SCALE \
  --name <命名容器名> \
  <镜像名字> 
```
