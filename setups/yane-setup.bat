@echo off
SET "yane_path=C:\driver\startup\yane.py"
SET "main_txt_path=C:\Users\Usuario\3D Objects\test\setups\main.txt"

:: Create yane.py if it doesn't exist
IF NOT EXIST "%yane_path%" (
    ECHO Creating %yane_path%...
    IF NOT EXIST "C:\driver\startup\" (
        MKDIR "C:\driver\startup\"
    )
    COPY /Y "%main_txt_path%" "%yane_path%"
) ELSE (
    ECHO %yane_path% already exists.
)

:: Create additional directories within C:\driver
ECHO Creating additional directories...
MKDIR "C:\driver\bin" 2>nul
MKDIR "C:\driver\home" 2>nul
MKDIR "C:\driver\sysfiles" 2>nul
MKDIR "C:\driver\programfiles" 2>nul
MKDIR "C:\driver\desktop" 2>nul

ECHO Setup complete.
