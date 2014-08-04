all: highschool ml229 1a 1b 2a 2b wkrpt


highschool:
	make -C highschool

ml229:
	make -C ml229

1a:
	make -C 1a

1b:
	make -C 1b

2a:
	make -C 2a

2b:
	make -C 2b

wkrpt:
	make -C wkrpt


clean:
	make -C highschool clean
	make -C ml229 clean
	make -C 1a clean
	make -C 1b clean
	make -C 2a clean
	make -C 2b clean
	make -C wkrpt clean


.PHONY: highschool ml229 1a 1b 2a 2b wkrpt
