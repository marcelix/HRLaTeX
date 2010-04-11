all:
	-@echo ""
	-@echo "Generiranje hipenacijskih patterna pomocu patgen-a..."
	-@echo ""patgen hip-rjecnik.dic pattern.in patterns.out tra 

run-patgen:
	-patgen hip-rjecnik.dic patterns.marc.tex patterns.out.txt hr.tra
	-cat patterns.out.txt

new-pattern:
	-patgen hip-rjecnik.dic empty.patterns patterns.out.txt hr.tra
	-cat patterns.out.txt

tetex-refresh:
	-@fmtutil --all

test:
	-@latex testiranje_hipenacije


install:
	-@echo " Not implemented..."






.PHONY:clean
clean:
	-@rm *~ *.backup *.log *.aux *.dvi