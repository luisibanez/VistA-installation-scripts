#!/bin/sh
#
# More details at
# http://www.osehra.org/wiki/importing-osehra-code-base-gtm
#
# This script is no longer needed, given that CMake perform this importing
# while it is running a Dashboard build.
#
export VistADir=$HOME/VistA-Instance
export gtm_dist=/usr/lib/fis-gtm/V5.5-000_x86_64
export gtmprofilefile=$gtm_dist/gtmprofile
source $gtmprofilefile
export gtmgbldir=$VistADir/database
export gtmroutines="$VistADir/o($VistADir/r) $gtm_dist/libgtmutil.so"
$gtm_dist/gtm
#
# DO ^%RI
#
# Formfeed delimited <No>?  No
# Input device: <terminal>: $HOME/OSEHRA/VistA-FOIA/routines.ro
# Output directory : $HOME/VistA/r/
#
#
# DO LIST^ZGI("$HOME/OSEHRA/VistA-FOIA/globals.lst","$HOME/OSEHRA/VistA-FOIA/")
#
# D ^ZTMGRSET
#
#  ZTMGRSET Version 8.0 Patch level **34,36,69,94,121,127,136,191,275,355,446**
#  HELLO! I exist to assist you in correctly initializing the current account.
#  Which MUMPS system should I install?
#
#  1 = VAX DSM(V6), VAX DSM(V7)
#  2 = MSM-PC/PLUS, MSM for NT or UNIX
#  3 = Cache (VMS, NT, Linux), OpenM-NT
#  4 = Datatree, DTM-PC, DT-MAX
#  5 =
#  6 =
#  7 = GT.M (VMS)
#  8 = GT.M (Unix)
#  System: 8
#
#
#  NAME OF MANAGER'S UCI,VOLUME SET: VAH,ROU// PLA,PLA
#  The value of PRODUCTION will be used in the GETENV api.
#  PRODUCTION (SIGN-ON) UCI,VOLUME SET: VAH,ROU// PLA,PLA
#  The VOLUME name must match the one in PRODUCTION.
#  NAME OF VOLUME SET: PLA//PLA
#  The temp directory for the system: '/tmp/'//
#  Want to rename the FileMan routines: No//Y
#
