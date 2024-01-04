@echo off
QRes.exe /X 1280 /Y 960 /R 240
start steam://rungameid/730
timeout /t 5 > NUL

:loop
tasklist /fi "IMAGENAME eq cs2.exe" | find ":" > nul
if errorlevel 1 (goto loop)

QRes.exe /X 2560 /Y 1440
exit