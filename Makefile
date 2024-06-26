.PHONY: all clean

CC = xelatex
SECTIONS_DIR = sections
OUTPUT_DIR = .

SECTION_SRCS = $(shell find $(SECTIONS_DIR) -name '*.tex')

all: cv.pdf

resume.pdf: resume.tex $(SECTION_SRCS)
	$(CC) -output-directory=${OUTPUT_DIR} $<

cv.pdf: cv.tex $(SECTION_SRCS)
	$(CC) -output-directory=$(OUTPUT_DIR) $<

coverletter.pdf: coverletter.tex
	$(CC) -output-directory=$(OUTPUT_DIR) $<

clean:
	rm -rf $(OUTPUT_DIR)/*.pdf