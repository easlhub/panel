@echo off
title utility
echo.
echo 1. performance options
echo.
set /p choice=choice: 
cls
goto %choice%
:0
panel.bat
:1
set file=systempropertiesperformance.exe
:exit
start %directory%\%file%