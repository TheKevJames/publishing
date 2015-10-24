SUBDIRS := $(wildcard */.)


all:
	for dir in $(SUBDIRS); do make -C $$dir; done

install:
	mkdir -p ~/texmf/tex/latex/custom
	cp custom.sty ~/texmf/tex/latex/custom/custom.sty

clean:
	for dir in $(SUBDIRS); do make -C $$dir clean; done
