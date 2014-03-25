/* */
ORIG_SRC = '..\origsrc\mkhybrid-1.12a4.7'

'@cd ..\origsrc'
'@unzip mkh_orig'
'@cd ..\src'

/* backup original source */
'@copy' ORIG_SRC'\diag\isoinfo.c' ORIG_SRC'\diag\isoinfo.c.ori' 
'@copy' ORIG_SRC'\libhfs_iso\hfs.c' ORIG_SRC'\libhfs_iso\hfs.c.ori' 
'@copy' ORIG_SRC'\apple.h' ORIG_SRC'\apple.h.ori' 
'@copy' ORIG_SRC'\mkisofs.h' ORIG_SRC'\mkisofs.h.ori' 
'@copy' ORIG_SRC'\tree.c' ORIG_SRC'\tree.c.ori' 

/* patched source */
'@copy' 'diag\isoinfo.c' ORIG_SRC'\diag\isoinfo.c' 
'@copy' 'libhfs_iso\hfs.c' ORIG_SRC'\libhfs_iso\hfs.c' 
'@copy' 'apple.h' ORIG_SRC'\apple.h' 
'@copy' 'mkisofs.h' ORIG_SRC'\mkisofs.h' 
'@copy' 'tree.c' ORIG_SRC'\tree.c' 

/* os2 emx */
'@copy' 'config.h' ORIG_SRC'\config.h.emx' 
'@copy' 'Makefile' ORIG_SRC'\Makefile' 
'@copy' 'diag\Makefile.emx' ORIG_SRC'\diag\Makefile.emx' 
'@copy' 'libfile\Makefile.emx' ORIG_SRC'\libfile\Makefile.emx' 
'@copy' 'libhfs_iso\Makefile.emx' ORIG_SRC'\libhfs_iso\Makefile.emx' 
'@copy' 'diag\Makefile.emx' ORIG_SRC'\diag\Makefile.emx' 

/* os2 conflict make.cmd make.exe */
'@cd' ORIG_SRC
'@ren' 'make.com makew32.com'
'@cd ..\..\src'
