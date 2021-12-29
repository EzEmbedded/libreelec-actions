#!/bin/bash
sudo -E apt-get -qq update
sudo -E apt-get install gawk wget git-core diffstat unzip texinfo gcc gcc-multilib build-essential \
chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping \
python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pylint3 xterm python3-subunit mesa-common-dev zstd liblz4-tool
sudo -E apt-get -qq autoremove --purge
sudo -E apt-get -qq clean
sudo timedatectl set-timezone "$TZ"