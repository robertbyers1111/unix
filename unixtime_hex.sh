#!/bin/bash

#-----------------------------------------------------------------------
#-- This script displays unix time (secs since Jan 1, 1970 UTC) in hex.
#--
#-- If no cmdline args are given, the current system time is used. If
#-- one cmd line param is supplied it is used as the input unix time,
#-- in decimal.
#--
#-----------------------------------------------------------------------

[ $# -eq 1 ] && UNXTIME=$1 || UNXTIME=`date +%s`
echo 10i16o${UNXTIME}p|dc
