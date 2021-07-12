all: main.pdf

section1.tex: dots/example.png
section2.tex: dots/example.png
main.tex: section1.tex section2.tex

%.pdf: %.tex
	pdflatex $<
	pdflatex $<
	evince $@

dots/%.png: dots/%.dot
	dot -Tpng -o $@ $<

clean:
	git clean -fdx
