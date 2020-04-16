

%.pdf : %.Rmd
	Rscript -e 'rmarkdown::render("$<", "pdf_document")'
