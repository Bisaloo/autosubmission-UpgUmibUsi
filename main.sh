#!/bin/bash

if [ $(date +'%A') = 'Sunday' ]; then
  LAST_SUNDAY=$(date +'%Y-%m-%d')
else
  LAST_SUNDAY=$(date --date='last Sun' +'%Y-%m-%d')
fi
mkdir -p data-processed/UpgUmibUsi-MultiBayes
wget -P data-processed/UpgUmibUsi-MultiBayes https://www.dropbox.com/s/m9pxh715g0bvofs/$LAST_SUNDAY-UpgUmibUsi-MultiBayes.csv?dl=0
