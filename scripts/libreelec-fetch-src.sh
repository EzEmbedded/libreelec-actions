#!/bin/bash
git clone https://github.com/LibreELEC/LibreELEC.tv.git
cd LibreELEC.tv
pwd 
ls -al
PROJECT=Generic ARCH=x86_64 tools/download-tool
PROJECT=Generic ARCH=x86_64 make image