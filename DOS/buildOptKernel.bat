set domakeerr=0

if %INGOSHELL% neq 1 set domakerr=999
if %domakeerr% neq 0 goto end

propellent /PORT %PROPCOMM% /EEPROM MAKE/results/outputFiles/StartKernel.eeprom
if %ERRORLEVEL% neq 0 set domakeerr=998
if %domakeerr% neq 0 goto end


goterm %PROPCOMM% %PROPBAUD% %PROPFLOWCONTROL% v w r MAKE/scripts/buildOptKernel-5.txt
if %ERRORLEVEL% neq 0 set domakeerr=2
if %domakeerr% neq 0 goto end

:end
echo buildoptkernel.bat result: %domakeerr%
