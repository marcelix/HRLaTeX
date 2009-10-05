version := $(shell cat ../version.txt)

hrlatex_release := hrlatex-$(version)
hrlatex_examples_release := hrlatex-examples-$(version)
hrlatex_demo_release := hrlatex-demo-$(version)

tar_options := -h -cvjf

release:
	-rm -f hrlatex*.bz2
	-echo $(version)m
	-tar $(tar_options) hrlatex-$(version).tar.bz2          --exclude-from='exclude_list' *
	-tar $(tar_options) $(hrlatex_examples_release).tar.bz2 --exclude-from='exclude_list' examples/*
	-tar $(tar_options) hrlatex-demo-$(version).tar.bz2     --exclude-from='exclude_list' demo/*
#
	-@zip -9r $(hrlatex_examples_release).zip examples/* -x@exclude.lst
	-@zip -9r $(hrlatex_demo_release).zip     demo/*     -x@exclude.lst
	-@zip -9r $(hrlatex_release).zip          *          -x@exclude.lst

.PHONY:clean
clean:
	-rm hrlatex*.tar.bz2 *.zip
