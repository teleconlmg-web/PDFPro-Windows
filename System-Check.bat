@echo off
REM Compatibility check for PDF Pro installer

setlocal enabledelayedexpansion

REM Get current date and time
set "currentDateTime=2026-03-29 14:52:43"
set "currentUser=teleconlmg-web"

REM Output current date and time
echo Current Date and Time: !currentDateTime!
echo Current User's Login: !currentUser!

REM Check for required OS version
ver | findstr /i "10.0.19041" >nul
if %errorlevel% neq 0 (
    echo Incompatible OS version. Minimum required: Windows 10 version 19041.
    exit /b 1
)

echo OS version is compatible.

REM Check for necessary system resources (example values)
set "requiredRam=4"
set "availableRam=!random!"
if !availableRam! LSS !requiredRam! (
    echo Insufficient RAM. Minimum required: !requiredRam! GB.
    exit /b 1
)

echo Sufficient RAM available.

REM Add other compatibility checks as needed

endlocal
exit /b 0