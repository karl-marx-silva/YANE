@echo off

:: Remove directories within C:\driver and itself
ECHO Removing directories...
RMDIR /S /Q "C:\driver\bin"
RMDIR /S /Q "C:\driver\home"
RMDIR /S /Q "C:\driver\sysfiles"
RMDIR /S /Q "C:\driver\programfiles"
RMDIR /S /Q "C:\driver\desktop"
RMDIR /S /Q "C:\driver"
ECHO Directories removed.
