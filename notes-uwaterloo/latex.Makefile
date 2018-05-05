.SUFFIXES: .pdf .tex

.tex.pdf:
	latexmk -xelatex $< && latexmk -c
