all: cs341.pdf
	make -C assignment


.SUFFIXES:
.SUFFIXES: .pdf .tex

.tex.pdf:
	pdflatex $^
	pdflatex $^


clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.out
	rm -f *.toc
	make -C assignment clean
