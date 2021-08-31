#!/bin/bash

# USE PASTE TO JOIN LINES

show_lines_to_be_joined()
{
    cat <<"    EOT"
        Date: 2021-0812
        Subject: ABCD
        Date: 2021-0813
        Subject: DEFG
        Date: 2021-0712
        Subject: 0xdeadbeef
        Date: 2021-0719
        Subject: crustal worts
        Date: 2021-0812
        Subject: dogbreath
        Date: 2021-0619
        Subject: WXYZ
        Date: 2021-0812
        Subject: discombobulated
        Date: 2021-0519
        Subject: combobulated
        Date: 2021-0813
        Subject: disgruntiled
    EOT
}

show_lines_to_be_joined | paste -d " " - -

