#!/bin/bash

ALL=true

if $ALL ; then
	gs -sDEVICE=png16m -r50 -o deana_b.png deana.ps
	convert deana_b.png -trim -bordercolor White -border 10%x10% deana.png
fi

if $ALL ; then
	gs -sDEVICE=png16m -r50 -o spock_b.png spock.ps
	convert spock_b.png -trim -bordercolor White -border 10%x10% spock.png
fi

if $ALL ; then
	gs -sDEVICE=png16m -r50 -o moon_b.png moon.ps
	convert moon_b.png -trim -bordercolor White -border 10%x10% moon.png
fi

if true || $ALL ; then
	gs -sDEVICE=png16m -r50 -o lgcat_b.png lgcat.ps
	convert lgcat_b.png -trim -bordercolor White -border 10%x10% lgcat.png

fi

