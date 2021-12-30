#!/bin/bash
git clone https://github.com/LibreELEC/LibreELEC.tv.git
cd LibreELEC.tv
pwd 
ls -al
PROJECT=Amlogic ARCH=arm DEVICE=SM1 tools/download-tool

PROJECT=Amlogic ARCH=arm DEVICE=SM1 make image