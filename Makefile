.PHONY: setup compile clean

setup:
ifeq ($(OS),Windows_NT)
	@setup.bat
else
	@chmod +x setup.sh && ./setup.sh
endif

compile:
	latexmk -pdf main.tex

clean:
	latexmk -C
	rm -f *.bbl *.run.xml *.bcf
