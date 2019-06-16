#!/bin/bash
apt-get update && apt-get -y install wget build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint
apt-get clean
useradd -d /home/lede -m -s /bin/bash lede
echo lede:lede | chpasswd
cat > /home/lede/lede.sh << EOF
git clone https://github.com/coolsnowwolf/lede
cd lede
./scripts/feOeds update -a 
./scripts/feeds install -a
make menuconfig 
#make -j1 V=s
EOF
