#!/bin/bash
#rm output.txt
echo Building...
{
pdflatex -interaction=nonstopmode -halt-on-error onlab1.tex
bibtex onlab1
pdflatex -interaction=nonstopmode -halt-on-error onlab1.tex
pdflatex -interaction=nonstopmode -halt-on-error onlab1.tex
} > output.txt
rm onlab1.aux onlab1.bbl onlab1.blg onlab1.out onlab1.log onlab1.toc
rm tartalom/*.aux
