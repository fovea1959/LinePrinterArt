#!/bin/bash

ALL=true

if $ALL ; then
#enscript --font=Courier@1.0 --no-header --truncate-lines  -o deana.ps deana.otxt
#enscript --font=Courier@1.0 --no-header --truncate-lines --baselineskip=0.70 -o deana.+0.70.ps deana.otxt
#enscript --font=Courier@1.5 --no-header --truncate-lines --baselineskip=0.50 -o deana.+0.50.ps deana.otxt
#enscript --font=Courier@2.0 --no-header --truncate-lines --baselineskip=0.35 -o deana.+0.35.ps deana.otxt
#enscript --font=Courier@2.5 --media=Legal --no-header --truncate-lines --baselineskip=0.20 -o deana.+0.20.ps deana.otxt
#enscript --font=Courier@2.5 --media=Legal --no-header --truncate-lines --baselineskip=0.00 -o deana.+0.00.ps deana.otxt
#enscript --font=Courier@2.5 --media=Legal --no-header --truncate-lines --baselineskip=-0.20 -o deana.-0.20.ps deana.otxt

# looks good
#enscript --font=Courier@2.5 --media=Letter --no-header --truncate-lines --baselineskip=-0.70 -o deana.-0.70.ps deana.otxt

# too tall!
#enscript --font=Courier@2.5 --media=Letter --no-header --truncate-lines --baselineskip=-0.12 -o deana.-0.12.ps deana.otxt

enscript --font=Courier@2.6 --media=Letter --no-header --truncate-lines --baselineskip=-0.12 -o deana.-2.60.ps deana.otxt
fi

if $ALL ; then
enscript --font=Courier@2.5 --media=Letter --no-header --truncate-lines --baselineskip=-0.70 -o spock.-2.50.ps spock.otxt
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
enscript --font=Courier@1.6 --media=Letter --no-header --truncate-lines --baselineskip=-0.42 -o moon.-1.60.ps moon.otxt

fi

