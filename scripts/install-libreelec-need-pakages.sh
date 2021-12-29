#!/bin/bash
sudo -E apt-get -qq update
sudo apt-get upgrade
sudo -E apt-get install gcc make git unzip wget xz-utils bc gperf zip unzip makeinfo g++ mkfontscale mkfontdir bdftopcf xsltproc java xfonts-utils xsltproc libparse-yapp-perl lzop patchutils 
sudo -E apt-get -qq autoremove --purge
sudo -E apt-get -qq clean
sudo timedatectl set-timezone "$TZ"