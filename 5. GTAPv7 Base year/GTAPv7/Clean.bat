

REM Delete junk files

del *.bak
del *.gs?
del *.cvl
del *.min
del *.mnc
del *.inf
del opt*
del *.mds
del *.nf
del *.fig
del *.mod
del *.for
del *.obj
del *.log
del *.aal
del *.mod

del *.cdk
del *.swk
del *.e2k
del *.ewk
del *.exs
del *.iwk
del *.pwk
del *.rdt

REM Delete old output files
del gtapSOL.har
del gtapVOL-*.har
del gtapView.har
del TAXRATES.har
del PE-ELAST*.har
del GE-ELAST*.har
del GE-ELAST*.har
del gsltohar.har
del *.upd
del *.sol
del *.clo
del *.ud?
del *.slc

goto skip
del *.sl?
del WELVIEW-*.har

del *.ax?
del *.exe
del *.eq4
:skip




