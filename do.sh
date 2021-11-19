#!/bin/bash -x

OFN="${1##*/}"
OBN="${OFN%.*}"
echo $1 "->" $OBN

SCR=`mktemp -d aa.tmp.${OBN}.XXXXXXXX`
echo Scratch dir is $SCR

python3 pp.py -v -o $SCR/$OBN.otxt "$1"
enscript --font=Courier@11 --media=s5k --no-header --truncate-lines --baselineskip=-2.70 -o $SCR/$OBN.ps $SCR/$OBN.otxt
gs -sDEVICE=png16m -r50 -o $SCR/${OBN}_b.png $SCR/$OBN.ps
convert $SCR/${OBN}_b.png -trim -bordercolor White -border 10%x10% $OBN.png
