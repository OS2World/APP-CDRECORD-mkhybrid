/* */
ORIG_SRC = '..\origsrc\mkhybrid-1.12a4.7'

'@cd' ORIG_SRC
'@make'
'@copy *.exe ..\..\bin'
'@cd diag'
'@make -fMakefile.emx'
'@copy *.exe ..\..\..\bin'
'@make -fMakefile.emx clean'
'@cd..'
'@make clean'
'@cd ..\..\src'