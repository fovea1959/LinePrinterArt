#!/bin/bash

ALL=true

if $ALL ; then
	gs -sDEVICE=png16m -r50 -o deana.png deana.ps
fi

if $ALL ; then
	gs -sDEVICE=png16m -r50 -o spock.png spock.ps
fi

if true || $ALL ; then
	gs -sDEVICE=png16m -r50 -o moon.png moon.ps
fi
