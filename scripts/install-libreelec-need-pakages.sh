#!/bin/bash
# sudo -E apt-get -qq update
# sudo apt-get upgrade
# sudo apt-get install ttf-mscorefonts-installer
# sudo apt-get install fontconfig
# sudo -E apt-get install gcc make git unzip wget xz-utils bc gperf zip unzip makeinfo g++ mkfontscale mkfontdir bdftopcf xsltproc openjdk-8-jdk texinfo  xfonts-utils xsltproc libparse-yapp-perl lzop patchutils 
# sudo -E apt-get -qq autoremove --purge
# sudo -E apt-get -qq clean
sudo timedatectl set-timezone "$TZ"
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install debhelper autoconf automake autopoint gettext autotools-dev cmake curl default-jre doxygen gawk gcc gdc gperf libasound2-dev libass-dev libavahi-client-dev libavahi-common-dev libbluetooth-dev libbluray-dev libbz2-dev libcdio-dev libp8-platform-dev libcrossguid-dev libcurl4-openssl-dev libcwiid-dev libdbus-1-dev libdrm-dev libegl1-mesa-dev libenca-dev libflac-dev flatbuffers-dev libfmt-dev libfontconfig-dev libfreetype6-dev libfribidi-dev libfstrcmp-dev libgcrypt-dev libgif-dev libgles2-mesa-dev libgl1-mesa-dev libglu1-mesa-dev libgnutls28-dev libgpg-error-dev libgtest-dev libiso9660-dev libjpeg-dev liblcms2-dev libltdl-dev liblzo2-dev libmicrohttpd-dev libmysqlclient-dev libnfs-dev libogg-dev libpcre3-dev libplist-dev libpng-dev libpulse-dev libshairplay-dev libsmbclient-dev libspdlog-dev libsqlite3-dev libssl-dev libtag1-dev libtiff5-dev libtinyxml-dev libtool libudev-dev libva-dev libvdpau-dev libvorbis-dev libxmu-dev libxrandr-dev libxslt1-dev libxt-dev lsb-release meson nasm ninja-build python3-dev python3-pil python3-pip rapidjson-dev swig unzip uuid-dev zip zlib1g-dev
