@echo off
echo having no onedrive sync with desktop is required!!

set /p target_path=answer project name:

if not exist "C:\Users\%USERNAME%\Desktop\Code\raylib\%target_path%" (
    mkdir "C:\Users\%USERNAME%\Desktop\Code\raylib\%target_path%"
    mkdir "C:\Users\%USERNAME%\Desktop\Code\raylib\%target_path%\src"
    mkdir "C:\Users\%USERNAME%\Desktop\Code\raylib\%target_path%\resources"
    mkdir "C:\Users\%USERNAME%\Desktop\Code\raylib\%target_path%\build"
    type nul > "C:\Users\%USERNAME%\Desktop\Code\raylib\%target_path%\src\main.c"
    echo folder made: %target_path%
) else (
    echo already exist
)

pause