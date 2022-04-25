@echo off
set doc=onlab1
echo Building...
@del output.txt
(
pdflatex -interaction=nonstopmode -halt-on-error %doc%.tex
bibtex %doc%
pdflatex -interaction=nonstopmode -halt-on-error %doc%.tex
pdflatex -interaction=nonstopmode -halt-on-error %doc%.tex
)>>output.txt
@del %doc%.aux %doc%.bbl %doc%.blg %doc%.out %doc%.log %doc%.toc
@del tartalom\*.aux
