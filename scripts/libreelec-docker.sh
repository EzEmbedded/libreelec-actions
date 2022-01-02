#!/bin/bash
git clone https://github.com/LibreELEC/LibreELEC.tv.git -b libreelec-10.0
cd LibreELEC.tv
docker build --pull -t libreelec tools/docker/focal
docker images
pwd
docker run --rm -v `pwd`:/build -w /build -i -e PROJECT=Amlogic -e DEVICE=AMLGX -e ARCH=arm libreelec make image
