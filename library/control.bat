@echo off
title control panel
echo.
echo 1. language
echo 2. region
echo 3. programs and features
echo 4. power options
echo 5. system properties
echo 6. windows firewall
echo 7. game controllers
echo 8. screen resolution
echo 9. date and time
echo 10. mouse properties
echo 11. sound
echo 12. action center
echo.
set /p choice=choice: 
cls
goto %choice%
:0
panel.bat
:1
set file=input.dll
goto exit
echo 11. sound
rem international
rem /name Microsoft.RegionalAndLanguageOptions
set file=intl.cpl
goto exit
:3
rem /name Microsoft.ProgramsAndFeatures
set file=appwiz.cpl
goto exit
:4
rem /name Microsoft.PowerOptions
set file=powercfg.cpl
goto exit
:5
rem /name Microsoft.System
set file=sysdm.cpl
goto exit
:6
rem /name Microsoft.WindowsFirewall
set file=Firewall.cpl
goto exit
:7
rem /name Microsoft.GameControllers
set file=joy.cpl
goto exit
:8
set file=desk.cpl
goto exit
:9
set file=timedate.cpl
goto exit
:10
set file=main.cpl
goto exit
:11
set file=mmsys.cpl
goto exit
:12
set file=wscui.cpl
:exit
start %directory%\control.exe %directory%\%file%