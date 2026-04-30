::======================================================================
:: Run GTAPv7 model (using 72x17 data with diagonal 'make' matrix)
::======================================================================
   
  GTAPv7 -cmf GTAPv7-72x17.cmf 
    if errorlevel 1 goto error

echo Job Done -- Examine simulation results 
del *.bak
del *.ud?
del *.aal
goto endOK          

:error               
dir/od *.log         
echo PROBLEM !!!! examine most recent Log
:endOK
