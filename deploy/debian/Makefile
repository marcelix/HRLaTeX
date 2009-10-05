



# Makefile za 'hr-text-tools' deb paket


all:
	-mkdir -p hr-text/usr/share/hr-text/ \
	          hr-text/usr/share/doc/hr-text/ \
		  hr-text/DEBIAN/
#
	-cp copyright hr-text/usr/share/doc/hr-text/
	-cp changelog* hr-text/usr/share/doc/hr-text/
	-gzip -f --best hr-text/usr/share/doc/hr-text/changelog*
#
#
	-cp --target-directory=hr-text/DEBIAN/ \
		post* \
		prerm control
	-cp ../../src/hr_* hr-text/usr/share/hr-text/
	-cp ../../src/sorting/sort_hr hr-text/usr/share/hr-text/
	-strip --strip-unneeded hr-text/usr/share/hr-text/hr_*
	-fakeroot dpkg -b hr-text
	-echo "... LINTIAN otput: "
	-lintian hr-text.deb
	-dpkg-name -o hr-text.deb 
