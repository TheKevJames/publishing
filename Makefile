SUBDIRS := $(wildcard */.)

CC_FLAGS :=
CXX_FLAGS := -g -Wall -Wextra


all: build


.SUFFIXES:
.SUFFIXES: .c .cc .class .cpp .dot .java .o .pdf .png .tex

.c.o:
	${CC} $(CC_FLAGS) -c $<

.cc.o:
	${CXX} $(CXX_FLAGS) -c $<

.cpp.o:
	${CXX} $(CXX_FLAGS) -c $<

.dot.png:
	dot -Tpng $< -o $^

.java.class:
	javac $^

.tex.pdf:
	pdflatex $^
	pdflatex $^


build:
	for dir in $(SUBDIRS); do  make -C $$dir; done

test:
	for dir in $(SUBDIRS); do make -C $$dir test; done

clean:
	rm -rf *.dSYM
	rm -f *.aux
	rm -f *.class
	rm -f *.fdb_latexmk
	rm -f *.fls
	rm -f *.log
	rm -f *.o
	rm -f *.out
	rm -f *.pdf
	rm -f *.toc

	for dir in $(SUBDIRS); do make -C $$dir clean; done

.PHONY: all build clean test $(SUBDIRS)
