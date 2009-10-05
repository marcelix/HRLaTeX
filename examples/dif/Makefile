#--------------------------------------------------------------------------------------------------------------
#           external tools
#--------------------------------------------------------------------------------------------------------------
TEXIFY        = texify -q --src                     # normal LaTeX texify
PDFTEXIFY     = texify -p -q                        # PDF texify
DVIPS         = dvips -Ppdf -G0 -ta4                # DVI to PS converter
PS2PDF        = ps2pdf                              #
UNZIP         = unzip                               # unzip
TAR           = tar                                 # GNU tar
CREATE_TAR_GZ = tar -czvf                           #
CREATE_TAR_BZ = tar -cjvf                           #
#--------------------------------------------------------------------------------------------------------------

#
#
# makeindex -s marc.ist -o dif.ind dif_jdbe

help:
	-@cat TODO*



snapshot:	
# ovo bi trebao biti target koji radi snapshot PDF
	
	
.PHONY:clean

clean:
	-@echo "Cleaning intermediate auxiliary files...."
	-rm -vrf *.aux *.log *.bak *.out *.toc *.dvi *.ps *.pdf *.zip mat.sve.bbl *.blg *~ *.ind *.lox *.ilg\
	         *.idx _temp* *.tmp
	-@echo "Done."