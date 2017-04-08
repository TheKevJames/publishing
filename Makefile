all: journal.pdf
journal.pdf: journal.tex $(wildcard *.tex)
	latexmk -xelatex $< && latexmk -c

clean:
	rm -f journal.pdf
