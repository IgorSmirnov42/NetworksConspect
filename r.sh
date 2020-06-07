#!/usr/bin/bash

rm *.{toc,out,aux,log}

for f in `ls main.tex` ; do
  pdflatex $f || exit
  pdflatex $f >/dev/null || exit
done

rm *.{toc,out,aux,log}
