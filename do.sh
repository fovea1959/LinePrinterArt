#!/bin/bash -x

OFN=`basename -s "$1"`
OFN="${1##*/}"
OBN="${OFN%.*}"
echo $1 "->" $OBN

python3 pp.py -v -o $OBN.otxt "$1"
enscript --font=Courier@11 --media=s5k --no-header --truncate-lines --baselineskip=-2.70 -o $OBN.ps $OBN.otxt
gs -sDEVICE=png16m -r50 -o ${OBN}_b.png $OBN.ps
convert ${OBN}_b.png -trim -bordercolor White -border 10%x10% $OBN.png
