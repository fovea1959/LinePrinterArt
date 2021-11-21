#!/bin/bash -x

OFN="${1##*/}"
OBN="${OFN%.*}"
echo $1 "->" $OBN

SCR=`mktemp -d aa.tmp.${OBN}.XXXXXXXX`
echo Scratch dir is $SCR

if [ -f ${OBN}.opt_pp ] ; then
	OPT_PP=`cat ${OBN}.opt_pp`
fi

OPT_EN="--media=s5k"
if [ -f ${OBN}.opt_en ] ; then
	OPT_EN=`cat ${OBN}.opt_en`
fi

python3 pp.py -v $OPT_PP -o $SCR/$OBN.otxt "$1"
enscript --font=Courier@11 --media=s5k $OPT_EN --no-header --truncate-lines --baselineskip=-2.70 -o $SCR/$OBN.ps $SCR/$OBN.otxt
gs -sDEVICE=png16m -r50 -o $SCR/${OBN}_b.png $SCR/$OBN.ps
convert $SCR/${OBN}_b.png -trim -bordercolor White -border 10%x10% $OBN.png
