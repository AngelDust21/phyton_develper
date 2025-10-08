@echo off
echo ========================================
echo    GIT SSH PUSH SCRIPT
echo ========================================
echo.

REM Controleer of we in een Git repository zijn
git status >nul 2>&1
if %errorlevel% neq 0 (
    echo FOUT: Je bent niet in een Git repository!
    echo Ga naar je project directory en probeer opnieuw.
    pause
    exit /b 1
)

REM Controleer of SSH remote is ingesteld
git remote get-url origin | findstr "git@" >nul
if %errorlevel% neq 0 (
    echo SSH remote wordt ingesteld...
    git remote set-url origin git@github.com:AngelDust21/phyton_develper.git
    echo SSH remote ingesteld!
    echo.
)

REM Toon huidige status
echo Huidige Git status:
git status --short
echo.

REM Voeg alle wijzigingen toe
echo Wijzigingen toevoegen...
git add .

REM Controleer of er iets te committen is
git diff --cached --quiet
if %errorlevel% equ 0 (
    echo Geen wijzigingen om te committen.
    pause
    exit /b 0
)

REM Vraag om commit bericht
set /p commit_msg="Voer je commit bericht in: "
if "%commit_msg%"=="" set commit_msg="Automatische commit via SSH script"

REM Maak commit
echo Committen...
git commit -m "%commit_msg%"

REM Push met SSH
echo Pushen naar GitHub via SSH...
git push

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCCESS! Gepusht via SSH
    echo ========================================
) else (
    echo.
    echo ========================================
    echo    FOUT bij pushen!
    echo ========================================
)

echo.
pause
