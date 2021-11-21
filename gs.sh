#!/bin/bash

ALL=true

doit() {
	gs -sDEVICE=png16m -r50 -o ${1}_b.png $1.ps
	convert ${1}_b.png -trim -bordercolor White -border 10%x10% $1.png
}

if $ALL ; then
	doit hcl1
fi

if true || $ALL ; then
	doit hcl2
fi
