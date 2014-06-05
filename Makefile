################################################################################
#                                                                              #
# md2pdf Makefile                                                              #
# - Andrew Lo <andrewlo@umail.ucsb.edu>                                        #
# - Much help from: <http://lincolnmullen.com/blog/make-and-pandoc/>           #
#                                                                              #
#  TODO:                                                                       #
#  - Add more options                                                          #
#                                                                              #
################################################################################

# Options ######################################################################
MARGIN=1in


# Start Makefile ###############################################################
CC     = pandoc
PDFS   = $(patsubst %.md,%.md.pdf,$(wildcard *.md))
FLAGS  = -V geometry:margin=$(MARGIN) --number-sections
VIEWER = evince

all: clean $(PDFS)

%.md.pdf: %.md
	$(CC) $(FLAGS) $< -o $@

# Deletes .md.pdf pdfs
clean:
	rm -f $(PDFS)

# Rename pdf from .md.pdf to .pdf
# Note that these will not be cleaned because they do not contain .md suffix
dist: all
	cp $(PDFS) $(subst .md,,$(PDFS))

rebuild: all

# Opens pdfs in pdf viewer
view: all
	$(VIEWER) $(PDFS)

