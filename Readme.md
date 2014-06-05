# md2pdf
Makefile for converting Markdown files to PDF.

## Usage
Copy the Makefile into the same directory as your Markdown file and run `make`.

Test this out by running make in this directory after cloning to produce a PDF
of this Readme.


## Notes

Note that you will need to have Pandoc installed (or change `CC` in the Makefile
to match your Markdown parser). Pandoc also requires a pdflatex library to
convert Markdown to PDF.

Makefile largely inspired by <http://lincolnmullen.com/blog/make-and-pandoc/>.

Happy Markdown-ing!

