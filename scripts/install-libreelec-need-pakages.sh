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
sudo add-apt-repository ppa:team-xbmc/ppa
sudo apt-get update
sudo apt-get install libshairplay-dev
sudo apt-get install gcc make git unzip wget xz-utils bc gperf zip unzip makeinfo g++ mkfontscale \
mkfontdir bdftopcf xsltproc  default-jdk xfonts-utils ttf-mscorefonts-installer fontconfig
