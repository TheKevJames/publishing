.SUFFIXES: .pdf .tex

.tex.pdf:
	xelatex $<
