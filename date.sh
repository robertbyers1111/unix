#!/bin/bash

#-----------------------------------------------------------------------
# Script: .date.sh
# Input: seconds since epoch
# Ouput: date/time in human readable form
#
# From stackexchange:
#
# On *BSD:
# 
#      date -r 1234567890
# 
# On Linux (specifically, with GNU coreutils ≥5.3):
# 
#      date -d @1234567890
# 
# With older versions of GNU date, you can calculate the relative difference
# to the UTC epoch:
# 
#      date -d '1970-01-01 UTC + 1234567890 seconds'
# 
# If you need portability, you're out of luck. The only time you can format
# with a POSIX shell command (without doing the calculation yourself) line is
# the current time. In practice, Perl is often available:
# 
#      perl -le 'print scalar localtime $ARGV[0]' 1234567890
#
# NOTES!!!
#
#       %T  ==  %H:%M:%S
#
#       %n  ==  newline
#
#-----------------------------------------------------------------------

[ $# -lt 1 ] && { cat ~rbyers/public_html/unix/date.sh ; echo USAGE: `basename $0` secsSinceEpoch; exit; }

while [ $# -ge 1 ]; do
  if echo $1 | grep -Eq "^[0-9][0-9]*$" ; then

    echo $1 seconds = $(date -d "1970-01-01 UTC + $1 seconds" +%Y-%m%d-%T)

  else
    echo Non-numeric argument: $1
  fi
  shift
done

#-----------------------------------------------------------------------
# EXAMPLE DATE COMMANDS:
#
#
# Do some math (!)..
#
#      date -d "1970-01-01 UTC + 1497456000 seconds" +%Y-%m%d-%T
#
# To epoch..
#
#      date +%s
#
#      date -d "2017-07-17 00:00:11" +%s
#
#      date -d "tomorrow" +%s
#      date -d "today + 1 month" +%s
#      date -d "1 year" +%s
#
# Max is 2.1B years into the future (!)
#
#      (in years from now)
#      date -d "2147483527 years" +%
#
#      (in seconds from 1970)
#      % date -d @67768036191694799
#
#          Wed 31 Dec 2147485547 11:59:59 PM EST
#
#      (add one more second and we've gone off the deep end)
#      % date -d @67768036191694800
#
#          date: time ‘67768036191694800’ is out of range
#
# To readable from epoch..
#
#      date -d @1500410380
#
#      date -d @1500410380 +"%Y-%m%d %T"
#
# Nanoseconds (Precision specifier does not produce usec or msec!)
#
#      date +"%Y-%m%d %T.%N"   #nanoseconds
#      date +"%Y-%m%d %T.%6N"  #nanoseconds to 6 places (not microseconds)
#      date +"%Y-%m%d %T.%3N"  #nanoseconds to 3 places (not miliseconds)
#      date +"%Y-%m%d %T.%15N" #nanoseconds to 9 places, padded left with 6 zeros
#
#-----------------------------------------------------------------------
# NOTES!!!
#
#       %T  ==  %H:%M:%S
#
#       %n  ==  newline
#
#-----------------------------------------------------------------------
#
# This script displays the last 45 seconds as MMM DD HH:MM:SS
#
#!/bin/bash
NOW=`date +%s`
I=45
while [ $I -ge 0 ]
do
    THEN=$(($NOW-$I))
    echo $THEN is "`date -d @$THEN +%b\ %_d\ %T`"
    I=$(($I-1))
done

