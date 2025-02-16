src_dir = src

EXTENSIONS := .aux fdb_latexmk .fls .log .out .pdf .toc .synctex.gz

# Target to clean files with specified extensions
clean:
	@echo "Cleaning files with extensions: $(EXTENSIONS)"
	@for ext in $(EXTENSIONS); do \
		find src/ -type f -name "*$$ext" -delete; \
	done
	@echo "Cleanup complete"

.PHONY: clean
