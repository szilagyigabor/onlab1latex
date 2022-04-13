set doc=onlab1
pdflatex -interaction=nonstopmode -halt-on-error %doc%.tex

@echo off
set /P id="press enter to delete junk and continue..."
@del %doc%.aux %doc%.bbl %doc%.blg %doc%.log %doc%.out %doc%.toc
@del tartalom\*.aux
