BBSDIR=src
BBS_INSTALL_DIR=$(INSTALLDIR)/$(BBSDIR)

all clean:

.PHONY:

install:
	[ -d $(INSTALLDIR) ] || install -d $(INSTALLDIR)
	[ -d $(BBS_INSTALL_DIR) ] || install -d $(BBS_INSTALL_DIR)
	cp -a $(BBSDIR)/* $(BBS_INSTALL_DIR)
	
	[ -d $(INSTALLDIR)/ui ] || install -d $(INSTALLDIR)/ui
	cp -a ui/* $(INSTALLDIR)/ui
	
	# change owner to nobody user/group on DS
	chown -R http:http $(BBS_INSTALL_DIR)

INFO: INFO.sh
	env UISTRING_PATH=$(STRING_DIR) ./INFO.sh > INFO

package: INFO
	[ -d $(PACKAGEDIR) ] || install -d $(PACKAGEDIR)
	[ -d $(PACKAGEDIR)/scripts ] || install -d $(PACKAGEDIR)/scripts
	cp -a scripts/* $(PACKAGEDIR)/scripts
	chmod 755 $(PACKAGEDIR)/scripts/*
	
	cp -a PACKAGE_ICON.PNG $(PACKAGEDIR)
	cp -a PACKAGE_ICON_256.PNG $(PACKAGEDIR)
	cp -a conf $(PACKAGEDIR)
	install -c -m 644 INFO $(PACKAGEDIR)

clean:
