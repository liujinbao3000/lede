1. 默认登陆IP 192.168.1.1, 密码 password
1. 克隆
1. 生成镜像
   ```
   docker build -t liujinbao3000/lede-build .
   ```
1. 运行容器
   ```
   docker run -itd \
     --name lede-build \
     liujinbao/lede-build  /bin/bash
   ```
1. 进入容器,运行更新脚本
   ```
   docker exec -it --user=lede lede-build /bin/bash
   bash lede.sh
   ```
1. 开始编译
   ```
   make -j1 V=s
   ```
1. 
   
