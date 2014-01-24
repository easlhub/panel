@echo off
title utility
echo.
echo 1. performance options
echo 2. volume mixer
echo.
set /p choice=choice: 
cls
goto %choice%
:0
panel.bat
:1
set file=systempropertiesperformance.exe
goto exit
:2
set file=sndvol.exe
:exit
start %directory%\%file%