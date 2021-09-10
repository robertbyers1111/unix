#!/bin/bash

# To set a variable to have a value only for the command being run..
#
#        env VARNAME=VALUE some_command
#

# Example..

# First, create a temporary shell script for this demo..
DEMO_sh=`mktemp`
echo echo ABC: \$ABC > $DEMO_sh
chmod +x $DEMO_sh

# Set a value that won't be seen inside the script if 'env' is used..
export ABC=ABC





        # Show that the current value is seen if 'env' is not used..

            echo
            echo Without using 'env..'

            $DEMO_sh





        # Show that the current value is overriden if 'env' is used..

            echo
            echo Using 'env..'

            env ABC=ZZZ $DEMO_sh





#(clean up)
echo
[ -f $DEMO_sh ] && rm $DEMO_sh

