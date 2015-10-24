include ../latex.Makefile


all: cs137.pdf ece105.pdf math115.pdf math117.pdf
	make -C ece140

clean:
	rm -f cs137.pdf
	rm -f ece105.pdf
	rm -f math115.pdf
	rm -f math117.pdf
	make -C ece140 clean
