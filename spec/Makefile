
SRC = $(wildcard *.rst)

PDFS=$(SRC:.rst=.pdf)
HTML=$(SRC:.rst=.md)
HTML=$(SRC:.rst=.html)

all:  $(PDFS) $(MD) $(HTML)

pdf:  clean $(PDFS)
md: clean $(MD)
html: clean $(HTML)

%.md: %.rst
	pandoc -o $@ $<

%.html: %.rst
	pandoc -o $@ $<

%.pdf: %.rst
	pandoc -o $@ $<

clean:
	rm -f *.html *.pdf *.md
