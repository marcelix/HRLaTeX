


all:
	flex -8 scanner.cp1250.l
	gcc main.c -o cp1250..tex
	flex -8 scanner.latin2.l
	gcc main.latin2.c -o latin2..tex
	flex -8 scanner.hrtex.l
	gcc main.hrtex.c -o hrtex




win-build:
	-@makensis deploy/win/hrlatex.installer.nsi




render-todo:
	-@gjots2html todo.gjots >  ~/public_html/todo/hrlatex.php


release:
	-mkdir -p tmp_release/
# 	
	-svn --force export svn+ssh://marcelix@shell.sourceforge.net/home/users/m/ma/marcelix/hrlatex/hrlatex_repo/out tmp_release
	-find tmp_release/ -iname ".svn" |xargs rm -rf
	-tar -cjvf hrlatex-0.1.1.tar.bz2 tmp_release/*



export-mindmap:
	-cat hrlatex_mindmap.mm |sed -e 's/http\:\/\/localhost//' > hrlatex.mm


pack:
	-cd src/hrlatex_ctan/ && $(MAKE) pack
	-cp src/hrlatex_ctan/hrlatex.zip deploy/
	-@echo "Done."


.PHONY:clean

clean:
	-rm -f *.dvi *.aux *.out *.log *~
