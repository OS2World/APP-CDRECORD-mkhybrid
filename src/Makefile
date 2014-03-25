# Generated automatically from Makefile.in by configure.
#
# $Id: Makefile.in,v 1.7 1997/04/10 03:31:17 eric Rel $
#
## Makefile for mkhybrid - based on mkisofs v1.11
# James Pearson 31/7/97

#### Start of system configuration section. ####

srcdir = .

CC = gcc

INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644

LIBS =  -lhfs -lfile -lsocket

prefix = /usr/local
exec_prefix = ${prefix}

bindir = ${exec_prefix}/bin

RANLIB = echo ranlib

libhfsdir = libhfs_iso
LIBHFS = $(libhfsdir)/libhfs.a
INCHFS = $(libhfsdir)/hfs.h

libfiledir = libfile
LIBFILE = $(libfiledir)/libfile.a

DEFINES = -DAPPLE_HYB
# DEFINES = 

COPTS=-g -O2

EXESFX=.exe


#### End of system configuration section. ####

CFLAGS=$(COPTS) -I. $(DEFINES) -I$(libhfsdir)
LDFLAGS= -L$(libhfsdir) -L$(libfiledir) -s
OBJS=mkisofs.o tree.o write.o hash.o rock.o multi.o \
		joliet.o match.o name.o fnmatch.o eltorito.o \
		getopt.o getopt1.o \
		apple.o volume.o desktop.o mac_label.o

World: mkhybrid$(EXESFX)

libhfs:: $(LIBHFS)

libfile:: $(LIBFILE)

mkhybrid$(EXESFX): Makefile $(OBJS) $(LIBHFS) $(LIBFILE)
	$(CC) $(LDFLAGS) -o mkhybrid$(EXESFX) $(OBJS) $(LIBS)

config.h: config.h.emx
	cp config.h.emx config.h

apple_driver: apple_driver.o
	$(CC) $(LDFLAGS) -o apple_driver  apple_driver.o
apple_driver.o: apple_driver.c mac_label.h
	$(CC) -c $(CFLAGS) apple_driver.c

tree.o: tree.c mkisofs.h iso9660.h exclude.h config.h Makefile
	$(CC) -c $(CFLAGS) tree.c

write.o: write.c mkisofs.h iso9660.h config.h Makefile
	$(CC) -c $(CFLAGS) write.c

hash.o: hash.c mkisofs.h  config.h Makefile
	$(CC) -c $(CFLAGS) hash.c

rock.o: rock.c mkisofs.h iso9660.h config.h Makefile
	$(CC) -c $(CFLAGS) rock.c

joliet.o: joliet.c mkisofs.h iso9660.h config.h Makefile
	$(CC) -c $(CFLAGS) joliet.c

match.o: match.c match.h config.h Makefile
	$(CC) -c $(CFLAGS) match.c

fnmatch.o: fnmatch.c fnmatch.h config.h Makefile
	$(CC) -c $(CFLAGS) fnmatch.c

multi.o: multi.c iso9660.h mkisofs.h config.h Makefile
	$(CC) -c $(CFLAGS) multi.c

name.o: name.c iso9660.h mkisofs.h config.h Makefile
	$(CC) -c $(CFLAGS) name.c

mkisofs.o: mkisofs.c iso9660.h mkisofs.h exclude.h config.h Makefile $(LIBHFS) $(INCHFS) $(LIBFILE)
	$(CC) -c $(CFLAGS) mkisofs.c

eltorito.o: eltorito.c iso9660.h mkisofs.h config.h Makefile
	$(CC) -c $(CFLAGS) eltorito.c

getopt.o: getopt.c exclude.h config.h Makefile
	$(CC) -c $(CFLAGS) getopt.c

getopt1.o: getopt1.c exclude.h config.h Makefile
	$(CC) -c $(CFLAGS) getopt1.c

apple.o: apple.c apple.h Makefile mkisofs.h
	$(CC) -c $(CFLAGS) apple.c

volume.o: volume.c mkisofs.h config.h Makefile $(LIBHFS) $(INCHFS)
	$(CC) -c $(CFLAGS) volume.c

desktop.o: desktop.c mkisofs.h config.h Makefile $(LIBHFS) $(INCHFS)
	$(CC) -c $(CFLAGS) desktop.c

mac_label.o: mac_label.c mac_label.h Makefile config.h mkisofs.h
	$(CC) -c $(CFLAGS) mac_label.c


$(LIBHFS) ::
	cd $(libhfsdir) && $(MAKE) -fMakefile.emx CC="$(CC)" COPTS="$(COPTS)" DEFINES="$(DEFINES)" 

$(LIBFILE) ::
	cd $(libfiledir) && $(MAKE) -fMakefile.emx CC="$(CC)" COPTS="$(COPTS)" DEFINES="$(DEFINES)"

clean:
	/bin/rm -f *.o core mkhybrid apple_driver *~ #*#
	/bin/rm -f config.status config.log config.cache config.h
	cd $(libhfsdir) && make -fMakefile.emx clean
	cd $(libfiledir) && make -fMakefile.emx clean

