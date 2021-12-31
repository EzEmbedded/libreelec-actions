#!/bin/bash
# sudo -E apt-get -qq update
# sudo apt-get upgrade
# sudo apt-get install ttf-mscorefonts-installer
# sudo apt-get install fontconfig
# sudo -E apt-get install gcc make git unzip wget xz-utils bc gperf zip unzip makeinfo g++ mkfontscale mkfontdir bdftopcf xsltproc openjdk-8-jdk texinfo  xfonts-utils xsltproc libparse-yapp-perl lzop patchutils 
# sudo -E apt-get -qq autoremove --purge
# sudo -E apt-get -qq clean
sudo timedatectl set-timezone "$TZ"
# sudo apt-get update
# sudo apt-get upgrade
# sudo add-apt-repository ppa:team-xbmc/ppa
# sudo apt-get update
# sudo apt-get install libshairplay-dev
sudo apt-get update
sudo apt-get install -y \
    wget bash bc gcc-10 sed patch patchutils tar bzip2 gzip xz-utils zstd perl gawk gperf zip \
      unzip diffutils lzop make file g++-10 xfonts-utils xsltproc default-jre-headless python3 \
      libc6-dev libncurses5-dev libjson-perl libxml-parser-perl libparse-yapp-perl \
      golang-go git openssh-client \

