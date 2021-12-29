#!/bin/bash
sudo -E apt-get -qq update
sudo -E apt-get install gcc make git unzip wget xz-utils bc gperf zip unzip makeinfo g++ mkfontscale mkfontdir bdftopcf xsltproc java
sudo -E apt-get -qq autoremove --purge
sudo -E apt-get -qq clean
sudo timedatectl set-timezone "$TZ"