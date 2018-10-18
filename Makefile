# Makefile for LaTeXing
# Currently to take care of different outputs (transparencies, presentation)

# Copyright (c) 2016-18, Till Biskup
# 2018-06-14

LATEXBASEFILE = `find *.tex`
.DEFAULT_GOAL := pdf

pdf:
	pdflatex $(LATEXBASEFILE)

trans:
	pdflatex "\PassOptionsToClass{trans}{beamer}\input{$(LATEXBASEFILE)}"

clean:
	rm -f *aux *lo? *xml *out *toc *bbl *bcf *blg *.mtc* *maf *nav *snm *vrb
