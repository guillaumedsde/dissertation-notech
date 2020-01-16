# Produce PDFs from all Markdown files in a directory
# Lincoln Mullen | http://lincolnmullen.com | lincoln@lincolnmullen.com
# Obtained from https://gist.github.com/lmullen/3767386

# List files to be made by finding all *.md files and appending .pdf
PDFS := $(patsubst %.md,%.md.pdf,$(wildcard *.md))

# The all rule makes all the PDF files listed
pdfs : $(PDFS)

# This generic rule accepts PDF targets with corresponding Markdown
# source, and makes them using pandoc
%.md.pdf : %.md
	pandoc $< -o $@

# Remove all PDF outputs
clean-pdfs :
	rm $(PDFS)


# List files to be made by finding all *.md files and appending .html
HTMLS := $(patsubst %.md,%.md.html,$(wildcard *.md))

# The all rule makes all the HTML files listed
htmls : $(HTMLS)

# This generic rule accepts HTML targets with corresponding Markdown
# source, and makes them using pandoc
%.md.html : %.md
	wget -N https://gist.githubusercontent.com/tuzz/3331384/raw/fc0160dd7ea0b4a861533c4d6c232f56291796a3/github.css
	pandoc -s $< -o $@ --css=github.css --to=html5 

# Remove all HTML outputs
clean-htmls :
	rm $(HTMLS)


# Build progress report
progress-report :
	latexmk -xelatex -synctex=1 -interaction=nonstopmode --output-directory=build -file-line-error --shell-escape -cd ./progress_report/main.tex

# Build Document visualization literature review
document-visualization :
	latexmk -xelatex -synctex=1 -interaction=nonstopmode --output-directory=build -file-line-error --shell-escape -cd ./document_visualization/main.tex