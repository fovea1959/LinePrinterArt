#!/bin/bash

ALL=true

doit() {
	enscript --font=Courier@11 --media=s5k --no-header --truncate-lines --baselineskip=-2.70 -o $1.ps $1.otxt
}


if $ALL; then
	doit hcl1
fi

if $ALL || true; then
	doit bridge
fi

if $ALL || true; then
	doit hcl2
fi

