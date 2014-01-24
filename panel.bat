@echo off
title panel
set directory=%windir%\system32
echo.
echo 1. control panel
echo 2. microsoft management console
echo 3. utility
echo.
set /p choice=choice: 
cls
goto %choice%
:0
goto exit
:1
call library\control.bat
goto exit
:2
call library\mmc.bat
goto exit
:3
call library\utility.bat
:exit
set choice=
set directory=
set file=