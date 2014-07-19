all: highschool ml229 1A 1B 2A 2B wkrpt


.PHONY: highschool
highschool:
	make -C highschool

.PHONY: ml229
ml229:
	make -C ml229

.PHONY: 1A
1A:
	make -C 1A

.PHONY: 1B
1B:
	make -C 1B

.PHONY: 2A
2A:
	make -C 2A

.PHONY: 2B
2B:
	make -C 2B

.PHONY: wkrpt
wkrpt:
	make -C wkrpt


clean:
	make -C highschool clean
	make -C ml229 clean
	make -C 1A clean
	make -C 1B clean
	make -C 2A clean
	make -C 2B clean
	make -C wkrpt clean
