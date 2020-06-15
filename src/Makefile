.PHONY : all manuscript clean

all: build/review.pdf

build/review.pdf: review.org 
	pandoc 	-o build/review.pdf \
		--standalone \
		--from=org+smart \
		--to=latex \
		--filter=/Users/ethanjerzak/Dropbox/Coding/Pandoc/examplefilter/example_lists.py \
		--filter=pandoc-citeproc \
		--bibliography=/Users/ethanjerzak/Dropbox/sync/latex/EthanBib.bib \
		review.org

review: build/review.pdf

clean:
	rm -f *.aux *.log *.dvi *.blg *.bbl *.toc \
	*~ *.out *.html \
	build/*
