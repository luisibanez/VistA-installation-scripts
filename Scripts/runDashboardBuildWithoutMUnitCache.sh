#!/bin/sh
source $HOME/OSEHRA/VistA-installation-scripts/Scripts/setupEnvironmentVariablesCache.sh
export VistAGlobalsDir=$VistADir/g
export DashboardsDir=$HOME/OSEHRA/Dashboards
export PATH=$PATH:$HOME/local/bin
export HOST_NAME=`cat /proc/sys/kernel/hostname`
mkdir -p $DashboardsDir/Logs
$HOME/local/bin/ctest -j 4 \
-S $HOME/OSEHRA/VistA-installation-scripts/Scripts/runDashboardBuildWithoutMUnitCache.cmake \
-VV > $DashboardsDir/Logs/build.log
