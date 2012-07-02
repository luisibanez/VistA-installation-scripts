#!/bin/sh
cd $HOME
export VistADir=$HOME/VistA-Instance
export gtm_dist=/usr/lib/fis-gtm/V5.5-000_x86_64
mkdir -p $VistADir
mkdir -p $VistADir/r
mkdir -p $VistADir/o
export gtmprofilefile=$gtm_dist/gtmprofile
source $gtmprofilefile
export gtmgbldir=$VistADir/database
export gtmroutines="$VistADir/o($VistADir/r) $gtm_dist/libgtmutil.so"
echo "change -s DEFAULT -f=$VistADir/database" | $gtm_dist/mumps -r GDE
