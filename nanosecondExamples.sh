#!/bin/bash

doit ()
{
  expr $2 - $1
}

echo
echo Computing nanosecond deltas..
echo

doit `date +%S%N`               `date +%S%N` | commify
doit `date +%S%N`               `date +%S%N` | commify
doit `date +%S%N`               `date +%S%N` | commify
doit `date +%S%N`               `date +%S%N` | commify
doit `date +%S%N`               `date +%S%N` | commify
doit `date +%S%N`               `date +%S%N` | commify
doit `date +%S%N`               `date +%S%N` | commify
doit `date +%S%N`               `date +%S%N` | commify
doit `date +%S%N`               `date +%S%N` | commify
doit `date +%S%N`               `date +%S%N` | commify
doit `date +%S%N ; sleep 0.010` `date +%S%N` | commify
doit `date +%S%N ; sleep 0.020` `date +%S%N` | commify
doit `date +%S%N ; sleep 0.030` `date +%S%N` | commify
doit `date +%S%N ; sleep 0.040` `date +%S%N` | commify
doit `date +%S%N ; sleep 0.050` `date +%S%N` | commify
doit `date +%S%N ; sleep 0.060` `date +%S%N` | commify
doit `date +%S%N ; sleep 0.070` `date +%S%N` | commify
doit `date +%S%N ; sleep 0.080` `date +%S%N` | commify
doit `date +%S%N ; sleep 0.090` `date +%S%N` | commify
doit `date +%S%N ; sleep 0.100` `date +%S%N` | commify
doit `date +%S%N ; sleep 0.250` `date +%S%N` | commify
doit `date +%S%N ; sleep 0.490` `date +%S%N` | commify
doit `date +%S%N ; sleep 0.990` `date +%S%N` | commify
