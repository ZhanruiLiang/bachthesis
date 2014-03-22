view: pass2
	llpp main.pdf

pass1:
	pdflatex main.tex

pass2: main.bbl
	pdflatex main.tex

main.bbl: pass1
	bibtex main.aux

.PHONY: pass1 pass2 view
