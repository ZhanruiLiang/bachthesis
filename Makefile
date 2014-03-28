# latex=xelatex
latex=pdflatex

view: pass2
	llpp main.pdf

view1: pass1
	llpp main.pdf

pass1:
	$(latex) main.tex

pass2: main.bbl
	$(latex) main.tex

main.bbl: pass1 Bibliography.bib
	bibtex main

.PHONY: pass1 pass2 view view1
