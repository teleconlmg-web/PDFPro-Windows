@echo off

:MENU
cls
echo ============================
echo        INSTALLATION MENU

echo 1. Install PDFPro
echo 2. Uninstall PDFPro
echo 3. Update PDFPro
echo 4. Exit

echo ============================

set /p choice=Please select an option: 

if "%choice%"=="1" (
echo Installing PDFPro...
)
elif "%choice%"=="2" (
echo Uninstalling PDFPro...
)
elif "%choice%"=="3" (
echo Updating PDFPro...
)
elif "%choice%"=="4" (
echo Exiting...
goto END
)
else (
echo Invalid option. Please try again.
goto MENU
)

:END
pause