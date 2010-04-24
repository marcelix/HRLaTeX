#
#      Makefile for hrlatex package
#

hrlatex.sty:hrlatex.dtx hrlatex.ins
	yes|latex hrlatex.ins

samples:
	latex novi.diplomski-rad.tex
	latex sample.diplomski-rad.tex
	latex sample.minimal.cp1250.tex
	latex sample.minimal.utf8.tex

docs:
	pdflatex hrlatex.dtx
	makeindex -s gind.ist -o hrlatex.ind hrlatex.idx
	makeindex -s gglo.ist -o hrlatex.gls hrlatex.glo
	pdflatex hrlatex.dtx

pack:hrlatex.sty docs 
	-rm hrlatex.zip
	-zip -9 hrlatex.zip \
	hrlatex.dtx hrlatex.ins hrlatex.sty\
	fsbmath.sty fsbispit.cls \
	hrdipl.cls \
	README \
	sample.*.tex novi.*.tex \
	hrlatex.pdf
	-@unzip -l hrlatex.zip


test:    pack
	-mkdir -p tmp
	-rm -rf tmp/*
	-(cd tmp; yes|unzip ../hrlatex.zip; ls -la *)


# =============================================================

.PHONY:clean test

clean:
	-@echo "Cleaning up"
	-@rm -f \
	hrlatex.sty \
	hrlatex.zip \
	*.dvi *.aux *.out *.log *~ *.backup \
	hrlatex.pdf *.toc *.idx *.ilg *.ind *.glo *.gls *.tar.gz\
	sample*.pdf \
	tmp
	-rm -r tmp
	-@echo "Rebuilding hrlatex.sty"
	-@$(MAKE) -s hrlatex.sty 
	-@echo "Done."

