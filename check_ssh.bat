@echo off
echo ========================================
echo    SSH GIT STATUS CHECK
echo ========================================
echo.

REM Controleer Git configuratie
echo Git configuratie:
echo Naam: 
git config user.name
echo Email:
git config user.email
echo.

REM Controleer remote URL
echo Remote URL:
git remote get-url origin
echo.

REM Test SSH verbinding
echo SSH verbinding testen...
ssh -T git@github.com
echo.

REM Toon Git status
echo Git status:
git status --short
echo.

pause
