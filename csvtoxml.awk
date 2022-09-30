#!/bin/csh -f
BEGIN {
    FS=",";
    OFS = "\n"}
NR == 1 {for (i = 1; i <=NF; i++)
            tag[i]=$i
         print "<bugzilla version=\"3.4.1\" urlbase=\"http://mozilla.com/\" maintainer=\"somebody@mozilla.com\" exporter=\"somebody.else@mozilla.com\">"}
NR != 1 {print "   <BOOK>"
         for (i = 1; i <= NF; i++)
            print "      <" tag[i] ">" $i "</" tag[i] ">"
         print "   </BOOK>"}
END {print "</bugzilla>"}
