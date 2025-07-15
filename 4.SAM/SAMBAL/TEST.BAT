del *.sl4
del *.log
del *.bak
tablo -pgs testsam >tbtest.log
if errorlevel 1 goto err
gemsim -cmf testsam0.cmf >rntest0.log
if errorlevel 1 goto err
tablo -pgs sambal >tbsambal.log
if errorlevel 1 goto err
gemsim -cmf sambal.cmf >rnsambal.log
if errorlevel 1 goto err
gemsim -cmf testsam1.cmf >rntest1.log
if errorlevel 1 goto err
echo JOB RAN OK
dir/od *.har
goto endbat
:err
echo ERROR....examine latest log file
dir/od *.log
goto endbat


:endbat
