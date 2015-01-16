all: major_paper.pdf


.SUFFIXES:
.SUFFIXES: .pdf .tex

.tex.pdf:
	latexmk -xelatex $^ && latexmk -bibtex -c


clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.fdb_latexmk
	rm -f *.fls
	rm -f *.log
	rm -f *.out
	rm -f *.pdf
	rm -f *.toc
