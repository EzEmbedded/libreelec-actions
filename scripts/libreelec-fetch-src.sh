#!/bin/bash
git clone https://github.com/LibreELEC/LibreELEC.tv.git -b 10.0.0
cd LibreELEC.tv
pwd 
ls -al
PROJECT=Amlogic ARCH=arm DEVICE=AMLGX ONELOG=no LOGCOMBINE=fail tools/download-tool

PROJECT=Amlogic ARCH=arm DEVICE=AMLGX ONELOG=no LOGCOMBINE=fail make image