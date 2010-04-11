


all:
	flex -8 recoding/scanner.cp1250.l
	gcc main.c -o hr_cp1250-to-tex
	flex -8 recoding/scanner.latin2.l
	gcc main.latin2.c -o hr_latin2-to-tex
	flex -8 recoding/scanner.tex-to-cp1250.l
	gcc main.hr_tex-to-cp1250.c -o hr_tex-to-cp1250




win-build:
	-@makensis deploy/win/hrlatex.installer.nsi




render-todo:
	-@gjots2html todo.gjots >  ~/public_html/todo/hrlatex.php






.PHONY:clean

clean:
	-rm -f *.dvi *.aux *.out *.log *~
