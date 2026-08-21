BUILD_DIR = build
MAIN = main.tex
PDF = $(BUILD_DIR)/main.pdf

.PHONY: all watch clean

all:
	latexmk -pdf -outdir=$(BUILD_DIR) $(MAIN)

# Recompile automatically whenever a source file changes
watch:
	latexmk -pdf -outdir=$(BUILD_DIR) -pvc $(MAIN)

clean:
	latexmk -outdir=$(BUILD_DIR) -C $(MAIN)
	rm -rf $(BUILD_DIR)
