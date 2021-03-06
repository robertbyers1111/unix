
#   +---------+
#---| MANPAGE |-----------------------------------------------------------------
#   +---------+

Usage: tr [OPTION]... SET1 [SET2]
Translate, squeeze, and/or delete characters from standard input,
writing to standard output.

  -c, -C, --complement    use the complement of SET1
  -d, --delete            delete characters in SET1, do not translate
  -s, --squeeze-repeats   replace each input sequence of a repeated character
                            that is listed in SET1 with a single occurrence
                            of that character
  -t, --truncate-set1     first truncate SET1 to length of SET2
      --help     display this help and exit
      --version  output version information and exit

SETs are specified as strings of characters.  Most represent themselves.
Interpreted sequences are:

  \NNN            character with octal value NNN (1 to 3 octal digits)
  \\              backslash
  \a              audible BEL
  \b              backspace
  \f              form feed
  \n              new line
  \r              return
  \t              horizontal tab
  \v              vertical tab
  CHAR1-CHAR2     all characters from CHAR1 to CHAR2 in ascending order
  [CHAR*]         in SET2, copies of CHAR until length of SET1
  [CHAR*REPEAT]   REPEAT copies of CHAR, REPEAT octal if starting with 0
  [:alnum:]       all letters and digits
  [:alpha:]       all letters
  [:blank:]       all horizontal whitespace
  [:cntrl:]       all control characters
  [:digit:]       all digits
  [:graph:]       all printable characters, not including space
  [:lower:]       all lower case letters
  [:print:]       all printable characters, including space
  [:punct:]       all punctuation characters
  [:space:]       all horizontal or vertical whitespace
  [:upper:]       all upper case letters
  [:xdigit:]      all hexadecimal digits
  [=CHAR=]        all characters which are equivalent to CHAR

Translation occurs if -d is not given and both SET1 and SET2 appear.
-t may be used only when translating.  SET2 is extended to length of
SET1 by repeating its last character as necessary.  Excess characters
of SET2 are ignored.  Only [:lower:] and [:upper:] are guaranteed to
expand in ascending order; used in SET2 while translating, they may
only be used in pairs to specify case conversion.  -s uses SET1 if not
translating nor deleting; else squeezing uses SET2 and occurs after
translation or deletion.

#   +-------+
#---| DEMOS |-------------------------------------------------------------------
#   +-------+

    #--	\015 (octal) is Carriage Return
    #--	\012 (octal) is New Line

    cat $1 | /bin/tr '\015' '\012'

#   +---------------+
#---| CR to newline |---
#   +---------------+

    #   \015 (octal) is Carriage Return
    #   \012 (octal) is New Line

    cat $1 | tr '\015' '\012'

#   +--------------------+
#---| Spaces to newlines |---
#   +--------------------+

    PROCS=`ps -efj | grep -v ^UID | cut -d\  -f1`
                             #-------------#
    (for VAR in `echo $PROCS | tr ' ' '\n' | sort -u` ; do
                             #-------------#
      echo $VAR

    done) | sort -n

#   +----------------+
#---| Tabs to spaces |---
#   +----------------+

    #   \011 (octal) is Horizontal Tab

    cat $1 | tr '\011' ' '

