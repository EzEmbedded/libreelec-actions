#!/bin/bash
curl -fsSL git.io/file-transfer | sh
# EXT=yocto-image.tar.xz
# for i in ${EXT}.*; do
#         echo $i
    #     ./transfer wet -s -p 16 --no-progress yocto-downloads.tar.gz.aa 2>&1 | tee wetransfer.log
    #     echo "::warning file=wetransfer.com::$(cat wetransfer.log | grep https)"     
    #     echo "::set-output name=url::$(cat wetransfer.log | grep https | cut -f3 -d" ")"
    # done

./transfer wet -s -p 16 --no-progress collect-srcrevs.txt 2>&1 | tee wetransfer.log
 echo "::warning collect-srcrevs.txt file=wetransfer.com::$(cat wetransfer.log | grep https)"     
echo "::set-output name=url::$(cat wetransfer.log | grep https | cut -f3 -d" ")" 
for file in $(ls ./)
do 
    if [ "${file%.*}" = "yocto-downloads.tar.gz" ]; then
       echo "find:$file"
       ./transfer wet -s -p 16 --no-progress $file 2>&1 | tee wetransfer.log
       echo "::warning file=wetransfer.com::$(cat wetransfer.log | grep https)"     
       echo "::set-output name=url::$(cat wetransfer.log | grep https | cut -f3 -d" ")"    
    fi
done