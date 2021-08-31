#!/bin/sh

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#
# gnuplot
#
# Common command line params..
#
#     -p --persist
#     -d --default-settings
#     -e "command1; command2; ..."
#     -c scriptfile ARG1 ARG2 ..
#
#    gnuplot> help with
#     Functions and data may be displayed in one of a large number of styles.
#     The `with` keyword provides the means of selection.
#    
#     Syntax:
#           with <style> { {linestyle | ls <line_style>}
#                          | {{linetype  | lt <line_type>}
#                             {linewidth | lw <line_width>}
#                             {linecolor | lc <colorspec>}
#                             {pointtype | pt <point_type>}
#                             {pointsize | ps <point_size>}
#                             {fill | fs <fillstyle>} {fillcolor | fc <colorspec>}
#                             {nohidden3d} {nocontours} {nosurface}
#                             {palette}}
#                        }
#    
#    
#     where <style> is one of
#    
#          lines        dots       steps     errorbars     xerrorbar    xyerrorlines
#          points       impulses   fsteps    errorlines    xerrorlines  yerrorbars
#          linespoints  labels     histeps   financebars   xyerrorbars  yerrorlines
#          surface      vectors    parallelaxes




#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Extract the login duration from each line found in wtmp. Ignore 00:00 and any
# durations greater than 24 hours (d+hh:mm)

last_durations()
{
    last | grep -v "00:00|\+..:" | cut -d \( -f2- | cut -d\) -f 1  | grep ^[0-9]
}

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Just display some data

echo_simple_data()
{
    cat <<EOT
    A B
    1 0
    2 1
    3 1
    4 2
    5 3
    6 5
    7 8
    8 13
    9 21
    10 34
EOT
}

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Display some other data (data only)

echo_some_other_data_A()
{
    cat <<EOT1
    index fib fibthree
    0 0 0
    1 1 1
    2 1 1
    3 2 2
    4 3 4
    5 5 7
    6 8 13
    7 13 24
    8 21 44
    9 34 81
    10 55 149
EOT1
}

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Display some other data (with plot commands and data)

echo_some_other_data_B()
{
    cat <<EOT2
    set title "gnuplot demo"
    set key title "Keys"
    set xlabel "X Values"
    set ylabel "Y Values"
    plot "-" using 1:3 with lines title columnheader
    index fib fibthree
    0 0 0
    1 1 1
    2 1 1
    3 2 2
    4 3 4
    5 5 7
    6 8 13
    7 13 24
    8 21 44
    9 34 81
    10 55 149
    e
EOT2
}

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# MAIN

# Plot some simple numbers

    echo_simple_data | \
    gnuplot -p -e "plot '<cat' with lines title columnheader"

# Plot some other data

# LIMITATION: If reading from stdin, can ONLY plot one column pair because gnuplot
# consumes the entire input separately for each plot series. Thus, this only plots
# the first series (!) though it would plot both series if reading from a file rather
# than a pipe.

# So we put the data in a temp file and all is OK with multiple series..
    echo_some_other_data_A > xyz-gnuplotdemo.dat
    gnuplot -p -e "plot 'xyz-gnuplotdemo.dat' using 1:3 with lines, '' using 1:2 with lines title columnheader"

# With lots plot commands, place them in with the data

    echo_some_other_data_B | \
    gnuplot -persist

# Plot the non-zero login durations (sub-24 hours) from /var/log/wtim

     last_durations | \
     gnuplot -p -e "plot '<cat' with lines"

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# SIMPLEST DEMO
#
# Only plots the first column of output. Use 'cut' or 'sed' to make your
# desired data be in column 1.

    "<some_command_that_produces_output>" | gnuplot -p -e "plot '<cat' using 1 with lines"

