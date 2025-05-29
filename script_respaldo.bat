@echo off
for /f "tokens=2 delims==" %%i in ('"wmic os get localdatetime /value"') do set datetime=%%i
set fecha=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2%
set hora=%datetime:~8,2%-%datetime:~10,2%-%datetime:~12,2%
echo Fecha de hoy: %fecha%
echo Hora actual: %hora%

mysqldump -u root bd_acrivera > C:\respaldos_acrivera\bd_backup_%fecha%_%hora%.sql