# Makefile za phd disertaciju

MAIN=phd_thesis



MAINTEX=$(MAIN).tex
SLAJDOVI=phd_seminar
HANDOUTS=phd_handouts
MAINPDF=$(MAIN).pdf
BOOKLET=$(MAIN)-booklet.pdf
SHAREDIR="~/Dropbox/public/"


# ===========================================================================

pdf:revision formalna-naslovnica
	pdflatex -shell-escape -synctex=1  $(MAIN)
	biber $(MAIN)
	$(MAKE) index
	pdflatex -shell-escape -synctex=1  $(MAIN)

qmain-tex-document:
	-@ls `egrep "documentclass" *.tex -l`|xargs -i basename {} .tex

revision:
	-@touch revision.txt
	-@git log -1|head -1  |cut -c 40-      > revision.txt
	-@git log -1|grep Date|cut -c 8-19    >> revision.txt
	

formalna-naslovnica:
	-@(cd tekst; xelatex unutarnji_dio.tex)




index:
	-@echo "Radim index [xindy]..."
	texindy -L croatian -M lang/croatian/utf8 $(MAIN).idx


.PHONY:help
help:
	-@echo
	-@echo "Targets: pdf, show, share, booklet"
	-@echo

clean:
	-@rm -rf *.aux *.log *.dvi *~ *.bbl *.blg *.backup




show:
	okular $(MAINPDF)

slajdovi:
	-@pdflatex $(SLAJDOVI)

handouts:
	-@pdflatex $(HANDOUTS)
	
share: 
	-@echo "Kopiram u dropbox."
	-@cp -f $(MAIN).pdf     $(SHAREDIR)



booklet:pdf
	-@echo " Radim booklet. Signatura..."
	pdfbook $(MAIN).pdf "{},2-"  --signature 10 --outfile $(BOOKLET)


naslovnica:booklet
	-@pdfbook mm_multiplarne_dedukcije.pdf "1" --outfile naslovnica.pdf
	

bind-book:
	-@echo "Za ljepljeni uvez."
	-@pdfjam --booklet 'true' --landscape --suffix "bind-book" --booklet 'false' --landscape --suffix book --signature '4' --no-tidy \
	$(MAIN).pdf


uvez: naslovnica
	-@pdfjoin naslovnica.pdf $(BOOKLET) --outfile uvez.pdf


list-targets:
	-@echo "Valid Make targets:"
	-@echo ""
	-@sh list-targets.sh|sort|nl


template-phd-unizg:
	-@rm "phd-template.zip"
	@git archive  --format=zip --output "phd-template.zip"  --prefix="phd-unizg-template/" bojko-phd
	-@zip -Tv phd-template.zip
	
