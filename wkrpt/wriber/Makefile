all: wkrpt.pdf


.SUFFIXES:
.SUFFIXES: .pdf .tex

.tex.pdf:
	latexmk -xelatex $^ && latexmk -bibtex -c


clean:
	rm -f wkrpt.pdf
