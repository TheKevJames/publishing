all: psych101.pdf


.SUFFIXES:
.SUFFIXES: .pdf .tex

.tex.pdf:
	pdflatex $^
	pdflatex $^


clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.out
	rm -f *.pdf
	rm -f *.toc
