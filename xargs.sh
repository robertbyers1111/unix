#!/bin/bash
#-------------------------------------------------------------------------------
#
# xargs -n1
#
# xargs -n1 -I HOST r.sh HOST pwd
#
# Use '-n1' to send only one argument at a time to the command. Otherwise
# everything is sent to the command all at once.
#
# Use '-I TAG' as a placeholder, in case the received args are not the final
# args of the command to be run.
#
# Use '-0' in case spaces are in filenames (use with find's -print0 )
#
#-------------------------------------------------------------------------------

% find /etc ! -readable -prune -o -name '*g' -print0    | xargs -0n1 echo FILE:

% hosts.sh 2 smoosh    | xargs -n1 -I HOST r.sh HOST pwd

#-------------------------------------------------------------------------------

vi /home/rbyers/public_html/unix/xargs.sh

