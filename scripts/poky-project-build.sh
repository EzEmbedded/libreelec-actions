#!/bin/bash
git clone --depth 1 git://git.yoctoproject.org/poky -b hardknott poky
git clone https://github.com/superna9999/meta-meson.git meta-meson -b hardknott
git clone  git://git.openembedded.org/meta-openembedded -b hardknott
git  clone git://github.com/kraj/meta-clang -b hardknott 
git clone git://git.openembedded.org/meta-python2 -b hardknott 
git clone https://github.com/OSSystems/meta-browser.git -b master
# git clone -b gatesgarth git://git.openembedded.org/meta-openembedded
# git clone -b gatesgarth git://git.yoctoproject.org/meta-raspberrypi
# git clone -b gatesgarth https://github.com/meta-qt5/meta-qt5
source poky/oe-init-build-env # in build dir
bitbake-layers add-layer ../meta-openembedded/meta-oe/
bitbake-layers add-layer ../meta-meson/
bitbake-layers add-layer ../meta-clang/
bitbake-layers add-layer ../meta-python2/
bitbake-layers add-layer ../meta-browser/meta-chromium/
# bitbake-layers show-layers

# bitbake-layers add-layer ../meta-raspberrypi
# bitbake-layers add-layer ../meta-qt5

# modify local.conf to build raspberrypi3 64-bit system
sed -i '/^MACHINE/s/= .*$/= "khadas-vim3l-sdboot"/g' conf/local.conf
sed -i '/^#SDKMA/s/#\(.*\)=.*$/\1= "x86_64"/g'  conf/local.conf
sed -i '$a\BB_GENERATE_MIRROR_TARBALLS = "1"'  conf/local.conf
sed -i '$a\INHERIT += "buildhistory"'  conf/local.conf
sed -i '$a\BUILDHISTORY_COMMIT = "1"'  conf/local.conf
# sed -i '$a\BB_NUMBER_THREADS = "2"'  conf/local.conf
# sed -i '$a\PARALLEL_MAKE = "-j 2"'  conf/local.conf
sed -i '$a\PACKAGECONFIG_append_pn-chromium = " component-build"'  conf/local.conf
sed -i '$a\PACKAGECONFIG_append_pn-chromium = " proprietary-codecs"'  conf/local.conf
sed -i '$a\PACKAGECONFIG_append_pn-chromium = " use-vaapi"'  conf/local.conf
sed -i '$a\INHERIT += "rm_work"'  conf/local.conf
# sed -i '$a\IMAGE_INSTALL_append = " chromium-x11"'  conf/local.conf

sed -i '$a\SOURCE_MIRROR_URL ?= "file:///Dlsrc/"'  conf/local.conf
sed -i '$a\INHERIT += "own-mirrors"'  conf/local.conf
sed -i '$a\BB_NO_NETWORK = "1"'  conf/local.conf

sed -i '$a\SSTATE_DIR ?= "/Sstate-cache"'  conf/local.conf
cat /Dlsrc/collect-srcrevs.txt >> conf/local.conf

cat conf/local.conf

cat conf/bblayers.conf


#sed -i '/SDKMACHINE/aTOOLCHAIN_TARGET_TASK_append = "libc-staticdev"' conf/local.conf
#sed -i '/qt5-ptest/aPACKAGECONFIG_remove = "tslib"' ../meta-qt5/recipes-qt/qt5/qtbase_git.bb

# building image
#bitbake core-image-base
#bitbake qtbase
#bitbake core-image-base -c populate_sdk
# buildhistory-collect-srcrevs -a
bitbake amlogic-image-headless-sd  -c populate_sdk_ext
# bitbake chromium --runonly=fetch
# bitbake amlogic-image-headless-sd  --runonly=fetch
# buildhistory-collect-srcrevs -a > collect-srcrevs.txt
# bitbake amlogic-image-headless-sd --runonly=fetch
# buildhistory-collect-srcrevs -a > collect-srcrevs.txt