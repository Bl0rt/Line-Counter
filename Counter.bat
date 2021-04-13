@echo off

echo.
echo Please copy lines to be counted. Then press enter. 
echo.
pause 

echo.
echo.
echo Calculating. Please wait.
echo.
echo.

set numFiles=0

for /f "tokens=*" %%g in ('powershell get-clipboard') do (  set file[!numFiles!]=%%g 
set /a numFiles+=1 
)

Echo  Number of lines: %numFiles%

pause

 