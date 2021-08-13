#!/bin/bash

#-- Determines if script is running from cron (more specifically, not from
#-- a TTY)

#---------------------------------------------------
#-- (Method 1) Using []

    tty -s; [ $? -ne 0 ] && INCRON=1 || INCRON=

    [ $INCRON ] && echo In cron || echo Not in cron

#---------------------------------------------------
#-- (Method 2) Using if

    if tty -s ; then INCRON= ; else INCRON=1 ; fi

    [ $INCRON ] && echo In cron || echo Not in cron

#-----------------------------------------------------------------------
#- NOTE that 'if' tests the exit status of the commands while '[]' tests
#- only the specific expressions supported by bash.
#-
#- This is why you can do..
#-
#-    if tty -s ; then ...
#-
#- but cannot do..
#-
#-    tty -s; [ $? ] && echo OK
#-
#- actually you *can* do that, but it always returns true, since what it
#- tests when only one arg is supplied is whether the arg is null or non-null
#
#-----------------------------------------------------------------------
