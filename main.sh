#!/bin/bash

if [ $(date +'%A') = 'Sunday' ]; then
  LAST_SUNDAY=$(date +'%Y-%m-%d')
else
  LAST_SUNDAY=$(date --date='last Sun' +'%Y-%m-%d')
fi
mkdir -p data-processed/UpgUmibUsi-MultiBayes
cd data-processed/UpgUmibUsi-MultiBayes
wget -O forecasts.zip 'https://www.dropbox.com/sh/vokzaxb4kmv67gr/AADDofoOZ32L5_WlLWn6SaTra?dl=1'
unzip forecasts.zip $LAST_SUNDAY-UpgUmibUsi-MultiBayes.csv
rm forecasts.zip
