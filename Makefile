DOC = report.tex
BUILD_DIR = _build
LATEXMK = latexmk -use-make -output-directory=$(BUILD_DIR)
DEPS := references.bib preamble.tex $(wildcard sections/*.tex) Makefile

all: $(BUILD_DIR)/$(DOC:.tex=.pdf)

$(BUILD_DIR)/%.pdf: %.tex $(DEPS)
	$(LATEXMK) $<

clean:
	$(LATEXMK) -C
	rm -rf $(BUILD_DIR)

.PHONY: all report clean
