
DAT_FILES=$(wildcard *.dat)

PDF_FILES=$(patsubst %.dat, %.pdf, $(DAT_FILES))

default: all

all: $(PDF_FILES)

.PHONY: all

$(PDF_FILES): %.pdf:%.plot %.dat 
	gnuplot $(patsubst %.pdf, %.plot, $@)
	ps2pdf $(patsubst %.pdf, %.ps, $@)
	pdfcrop $@ $@

clean:
	-rm $(PDF_FILES) $(patsubst %.pdf, %.ps, $(PDF_FILES))

.PHONY: clean
