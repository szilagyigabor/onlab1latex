set doc=onlab1
pdflatex -interaction=nonstopmode -halt-on-error %doc%.tex
bibtex %doc%
pdflatex -interaction=nonstopmode -halt-on-error %doc%.tex
pdflatex -interaction=nonstopmode -halt-on-error %doc%.tex

@del %doc%.aux %doc%.bbl %doc%.blg %doc%.log %doc%.out %doc%.toc
@del tartalom\*.aux
@echo off
set /P id="press enter to continue..."