.PHONY : all latex bibtex view clean distclean
# Change "paper" in the next line to the name of your document.
TARGET=main
SOURCE=$(TARGET).tex


all: $(TARGET).pdf 

# this rule ensures that the pdf is only build if the dependencies change. Therefore, all source, but also generate material is a dependency.
$(TARGET).pdf: $(TARGET).tex figures/*
	xelatex -halt-on-error $(SOURCE)
	biber $(TARGET)
	xelatex -halt-on-error $(SOURCE)
	xelatex -halt-on-error $(SOURCE)

latex:
	xelatex -halt-on-error $(SOURCE)
	xelatex -halt-on-error $(SOURCE)


bibtex:
	bibtex $(TARGET)

view:
	open $(TARGET).pdf &

clean:
	rm -f $(TARGET).aux $(TARGET).bbl $(TARGET).blg $(TARGET).log $(TARGET).out $(TARGET).synctex.gz


distclean: clean
	rm -f $(TARGET).pdf
