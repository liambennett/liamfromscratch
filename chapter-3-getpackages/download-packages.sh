#!/bin/bash
sudo mkdir -v $LFS/sources
sudo chmod -v a+wt $LFS/sources
wget --cut-dirs=3 -nH --recursive --no-parent https://mirror.dogado.de/LFS/lfs-packages/11.2/ --directory-prefix=$LFS/sources

pushd $LFS/sources
  md5sum -c md5sums
popd
