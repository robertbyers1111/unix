#!/bin/sh

#-------------------------------------------------------------------------------------
# This demo script does:
#  1) runs 'diff -e' on files $1 and $2
#  2) runs 'ed' on the output, generating file $3 which should be identical to $2
#-------------------------------------------------------------------------------------

#   +------------------+
#---| PERFORM THE EDIT |---
#   +------------------+

doit ()
{
/bin/ed <<EOT
e $1
`/bin/diff -e $1 $2`
w $3
q
EOT
}

#   +------+
#---| MAIN |---
#   +------+

#-- Process command line

USAGE="Usage: `basename $0` infile1 infile2 outfile"

INFILE1=$1
if [ "$INFILE1" = "" ]; then
  echo $USAGE
  exit 255
fi

if [ ! -f $INFILE1 ]; then
  echo "$INFILE1 not exist"
  exit 255
fi

INFILE2=$2
if [ "$INFILE2" = "" ]; then
  echo $USAGE
  exit 255
fi

if [ ! -f $INFILE2 ]; then
  echo "$INFILE2 not exist"
  exit 255
fi

OUTFILE=$3
if [ "$OUTFILE" = "" ]; then
  echo $USAGE
  exit 255
fi

#-- Do the edit
doit $INFILE1 $INFILE2 $OUTFILE
