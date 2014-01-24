@echo off
title microsoft management console
echo.
echo 1. services
echo 2. device manager
echo 3. local group policy editor
echo 4. disk management
echo 5. computer management
echo 6. event viewer
echo 7. local security policy
echo 8. certificates
echo 9. windows firewall with advanced security
echo 10. local users and groups
echo 11. shared folders
echo.
set /p choice=choice: 
cls
goto %choice%
:0
panel.bat
:1
set file=services.msc
goto exit
:2
rem control.exe hdwwiz.cpl
set file=devmgmt.msc
goto exit
:3
set file=gpedit.msc
goto exit
:4
set file=diskmgmt.msc
goto exit
:5
set file=compmgmt.msc
goto exit
:6
set file=eventvwr.msc
goto exit
:7
set file=secpol.msc
goto exit
:8
set file=certmgr.msc
goto exit
:9
set file=WF.msc
goto exit
:10
set file=lusrmgr.msc
goto exit
:11
set file=fsmgmt.msc
:exit
start %directory%\mmc.exe %directory%\%file%