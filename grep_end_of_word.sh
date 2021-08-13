#!/bin/bash
#
# MUST use QUOTES (in script and at shell prompt)
#
# Both types of quotes ("" and '') work
#
#       Word boundary: \b
# Not a word boundary: \B
#       Start of word: \<
#         End of word: \>
#          Whitespace: [[:space:]]

echo abcdefg.bcd.abcdefg | grep "\<bcd\>"

cat <<EOF | egrep ':53\>'

udp        0      0 0.0.0.0:53
udp        0      0 0.0.0.0:53-0
udp        0      0 0.0.0.0:53.0
udp        0      0 0.0.0.0:53@0
udp        0      0 0.0.0.0:53*0
udp        0      0 0.0.0.0:53                  0.0.0.0:*
udp        0      0 0.0.0.0:53 3                0.0.0.0:*
udp        0      0 0.0.0.0:53120               0.0.0.0:*
udp        0      0 0.0.0.0:53120               0.0.0.0:*
udp        0      0 0.0.0.0:53120               0.0.0.0:*
udp        0      0 0.0.0.0:5353                0.0.0.0:*
EOF

