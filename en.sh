#!/bin/bash

ALL=true

if $ALL ; then
# looks good
#enscript --font=Courier@2.5 --media=Letter --no-header --truncate-lines --baselineskip=-0.70 -o deana.2.50.ps deana.otxt

# great, small
#enscript --font=Courier@1.6 --media=Letter --no-header --truncate-lines --baselineskip=-0.42 -o deana.-1.60.ps deana.otxt

# great, still small
#enscript --font=Courier@2.0 --media=Letter --no-header --truncate-lines --baselineskip=-0.30 -o deana.-2.00.ps deana.otxt

# ascpect ratio good, maybe a little tall, takes two pages
#enscript --font=Courier@2.3 --media=Letter --no-header --truncate-lines --baselineskip=-0.40 -o deana.-2.30.ps deana.otxt

# looks really good
#enscript --font=Courier@2.3 --media=Letter --no-header --truncate-lines --baselineskip=-0.45 -o deana.2.30.ps deana.otxt

enscript --font=Courier@11 --media=s5k --no-header --truncate-lines --baselineskip=-2.70 -o deana.ps deana.otxt
fi

if $ALL ; then
#enscript --font=Courier@2.5 --media=Letter --no-header --truncate-lines --baselineskip=-0.70 -o spock.2.50.ps spock.otxt
enscript --font=Courier@11 --media=s5k --no-header --truncate-lines --baselineskip=-2.70 -o spock.ps spock.otxt
fi

if $ALL ; then
#enscript --font=Courier@2.5 --media=Legal --no-header --truncate-lines --baselineskip=-0.70 -o moon.-0.70.ps moon.otxt
#enscript --font=Courier@2.4 --media=Letter --no-header --truncate-lines --baselineskip=-0.67 -o moon.-0.67.ps moon.otxt

# this one is pretty good, the moon looks fat
#enscript --font=Courier@2.0 --media=Letter --no-header --truncate-lines --baselineskip=-0.76 -o moon.-0.76.ps moon.otxt

# looks square, but truncating
#enscript --font=Courier@1.7 --media=Letter --no-header --truncate-lines --baselineskip=-0.40 -o moon.-0.60.ps moon.otxt

# looks square (a little fat). Truncating, but that's the header, the image looks good!
#enscript --font=Courier@1.6 --media=Letter --no-header --truncate-lines --baselineskip=-0.44 -o moon.-0.44.ps moon.otxt

# looks square!
#enscript --font=Courier@1.6 --media=Letter --no-header --truncate-lines --baselineskip=-0.42 -o moon.1.60.ps moon.otxt

# stretched vertically
#enscript --font=Courier@11 --media=s5k --no-header --truncate-lines -o moon.11.0.ps moon.otxt
#enscript --font=Courier@11 --media=s5k --no-header --truncate-lines --baselineskip=-1.50 -o moon.11.0.ps moon.otxt

# a little stretch hor
#enscript --font=Courier@11 --media=s5k --no-header --truncate-lines --baselineskip=-2.00 -o moon.11.0.ps moon.otxt

# stretched vertically
#enscript --font=Courier@11 --media=s5k --no-header --truncate-lines --baselineskip=-1.80 -o moon.11.0.ps moon.otxt
#enscript --font=Courier@11 --media=s5k --no-header --truncate-lines --baselineskip=-1.90 -o moon.11.0.ps moon.otxt
#enscript --font=Courier@11 --media=s5k --no-header --truncate-lines --baselineskip=-1.95 -o moon.11.0.ps moon.otxt
#enscript --font=Courier@11 --media=s5k --no-header --truncate-lines --baselineskip=-1.97 -o moon.11.0.ps moon.otxt

#enscript --font=Courier@11 --media=s5k --no-header --truncate-lines --baselineskip=-2.60 -o moon.11.0.ps moon.otxt
enscript --font=Courier@11 --media=s5k --no-header --truncate-lines --baselineskip=-2.70 -o moon.ps moon.otxt

fi

