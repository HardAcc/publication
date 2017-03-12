
SVG_FILES=$(wildcard *.svg)

PDF_FILES=$(patsubst %.svg, %.pdf, $(SVG_FILES))

default: all

all: $(PDF_FILES)

.PHONY: all

$(PDF_FILES): %.pdf:%.svg
	inkscape $< --export-pdf $@
	pdfcrop $@ $@

clean:
	-rm $(PDF_FILES)

.PHONY: clean
