#!/bin/bash
git clone https://github.com/LibreELEC/LibreELEC.tv.git
cd LibreELEC.tv
docker build --pull -t libreelec tools/docker/focal
git clone https://github.com/LibreELEC/LibreELEC.tv.git -b libreelec-10.0
cd LibreELEC.tv
docker images
pwd
sudo chmod -R  777 ./
# sudo mkdir -p /build/build.LibreELEC-AMLGX.arm-10.0-devel  && sudo -E chmod 777 /build/build.LibreELEC-AMLGX.arm-10.0-devel

docker run --rm -v `pwd`:/build -w /build -i -e PROJECT=Amlogic -e DEVICE=AMLGX -e ARCH=arm -e ONELOG=no -e LOGCOMBINE=never libreelec make image
df -h