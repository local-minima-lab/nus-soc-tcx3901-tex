BUILD_DIR = build
# Document to build: main.tex (report), ppt1.tex or ppt2.tex (slides),
# e.g. `make watch MAIN=ppt1.tex`
MAIN = main.tex
DOCS = main.tex ppt1.tex ppt2.tex

.PHONY: all report ppt1 ppt2 watch clean

all:
	latexmk -pdf -outdir=$(BUILD_DIR) $(DOCS)

report:
	latexmk -pdf -outdir=$(BUILD_DIR) main.tex

ppt1 ppt2:
	latexmk -pdf -outdir=$(BUILD_DIR) $@.tex

# Recompile automatically whenever a source file changes
watch:
	latexmk -pdf -outdir=$(BUILD_DIR) -pvc $(MAIN)

clean:
	latexmk -outdir=$(BUILD_DIR) -C $(DOCS)
	rm -rf $(BUILD_DIR)
