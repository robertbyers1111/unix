#!/bin/bash

# This script displays the last 45 seconds as MMM DD HH:MM:SS

NOW=`date +%s`

I=45
while [ $I -ge 0 ]
do
    THEN=$(($NOW-$I))
    echo NOW: $NOW `date -d @$NOW +"%b %_d %T"` THEN: $THEN "`date -d @$THEN +%b\ %_d\ %T`"
    I=$(($I-1))
done
