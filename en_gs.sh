#!/bin/bash -x

OFN="${1##*/}"
OBN="${OFN%.*}"
echo $1 "->" $OBN

SCR=`mktemp -d aa.tmp.${OBN}.XXXXXXXX`
echo Scratch dir is $SCR

OPT_EN="--media=s5k"
if [ -f ${OBN}.opt_en ] ; then
	OPT_EN=`cat ${OBN}.opt_en`
fi

enscript --font=Courier@11 --media=s5k $OPT_EN --no-header --truncate-lines --baselineskip=-2.70 -o $SCR/$OBN.ps "$1"
gs -sDEVICE=png16m -r50 -o $SCR/${OBN}_b.png $SCR/$OBN.ps
convert $SCR/${OBN}_b.png -trim -bordercolor White -border 10%x10% $OBN.png
