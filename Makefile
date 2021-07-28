# Settings
TARGET=main
PREFIX=Socle
OUTNAME=Siccha-2021-Groups-and-Combinatorics-Normalizers-of-simple-diagonal-groups-in-polynomial-time
TEX=latexmk --pdf -file-line-error -halt-on-error

# Rules
all : $(OUTNAME).pdf
.PHONY: all, clean

$(OUTNAME).pdf : *.tex
	$(TEX) $(TARGET).tex && mv $(TARGET).pdf $(OUTNAME).pdf

clean :
	rm -f $(TARGET).pdf *.aux *.bcf *.bbl *.blg *.fls \
	    *.fdb_latexmk *.log *.nav *.out *.run.xml *.snm *.toc *.xyc
dist-clean : clean
	rm -f $(OUTNAME).pdf
