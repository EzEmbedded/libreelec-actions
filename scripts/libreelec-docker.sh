#!/bin/bash
git clone https://github.com/LibreELEC/LibreELEC.tv.git  -b libreelec-9.2
cd LibreELEC.tv
docker build --pull -t libreelec tools/docker/focal

docker images
pwd
sudo chmod -R  777 ./
# sudo mkdir -p /build/build.LibreELEC-AMLGX.arm-10.0-devel  && sudo -E chmod 777 /build/build.LibreELEC-AMLGX.arm-10.0-devel
docker run --rm -v `pwd`:/build -w /build -i -e PROJECT=Amlogic -e DEVICE=AMLGX -e ARCH=arm -e ONELOG=no -e LOGCOMBINE=never libreelec tools/download-tool
docker run --rm -v `pwd`:/build -w /build -i -e PROJECT=Amlogic -e DEVICE=AMLGX -e ARCH=arm -e ONELOG=no -e LOGCOMBINE=never libreelec make image
df -h

