@echo off
echo ========================================
echo    Git Oefeningen - Les 6
echo ========================================
echo.

REM Zorg dat we in de juiste directory zitten
cd /d "%~dp0"
echo Huidige directory: %CD%
echo.

:menu
echo Kies een oefening:
echo 1. Oefening 1 - Repo starten
echo 2. Oefening 2 - Eerste commit
echo 3. Oefening 3 - Wijziging en diff
echo 4. Oefening 4 - Herstel fout
echo 5. Oefening 5 - Commit amend
echo 6. Alle oefeningen (1-5)
echo 7. Demo compleet
echo 0. Afsluiten
echo.
set /p choice="Voer je keuze in (0-7): "

if "%choice%"=="1" goto oefening1
if "%choice%"=="2" goto oefening2
if "%choice%"=="3" goto oefening3
if "%choice%"=="4" goto oefening4
if "%choice%"=="5" goto oefening5
if "%choice%"=="6" goto alle_oefeningen
if "%choice%"=="7" goto demo
if "%choice%"=="0" goto einde
echo Ongeldige keuze, probeer opnieuw.
goto menu

:oefening1
echo.
echo === OEFENING 1: Repo starten ===
powershell -ExecutionPolicy Bypass -File "les6_oefening1_git_repo_starten.ps1"
if errorlevel 1 (
    echo FOUT: Oefening 1 mislukt!
    pause
    goto menu
)
echo Oefening 1 succesvol uitgevoerd!
pause
goto menu

:oefening2
echo.
echo === OEFENING 2: Eerste commit ===
powershell -ExecutionPolicy Bypass -File "les6_oefening2_git_eerste_commit.ps1"
if errorlevel 1 (
    echo FOUT: Oefening 2 mislukt!
    pause
    goto menu
)
echo Oefening 2 succesvol uitgevoerd!
pause
goto menu

:oefening3
echo.
echo === OEFENING 3: Wijziging en diff ===
powershell -ExecutionPolicy Bypass -File "les6_oefening3_git_wijziging_diff.ps1"
if errorlevel 1 (
    echo FOUT: Oefening 3 mislukt!
    pause
    goto menu
)
echo Oefening 3 succesvol uitgevoerd!
pause
goto menu

:oefening4
echo.
echo === OEFENING 4: Herstel fout ===
powershell -ExecutionPolicy Bypass -File "les6_oefening4_git_herstel_fout.ps1"
if errorlevel 1 (
    echo FOUT: Oefening 4 mislukt!
    pause
    goto menu
)
echo Oefening 4 succesvol uitgevoerd!
pause
goto menu

:oefening5
echo.
echo === OEFENING 5: Commit amend ===
powershell -ExecutionPolicy Bypass -File "les6_oefening5_git_commit_amend.ps1"
if errorlevel 1 (
    echo FOUT: Oefening 5 mislukt!
    pause
    goto menu
)
echo Oefening 5 succesvol uitgevoerd!
pause
goto menu

:alle_oefeningen
echo.
echo === ALLE OEFENINGEN UITVOEREN ===
echo.

echo Oefening 1...
powershell -ExecutionPolicy Bypass -File "les6_oefening1_git_repo_starten.ps1"
if errorlevel 1 (
    echo FOUT: Oefening 1 mislukt!
    goto einde
)

echo Oefening 2...
powershell -ExecutionPolicy Bypass -File "les6_oefening2_git_eerste_commit.ps1"
if errorlevel 1 (
    echo FOUT: Oefening 2 mislukt!
    goto einde
)

echo Oefening 3...
powershell -ExecutionPolicy Bypass -File "les6_oefening3_git_wijziging_diff.ps1"
if errorlevel 1 (
    echo FOUT: Oefening 3 mislukt!
    goto einde
)

echo Oefening 4...
powershell -ExecutionPolicy Bypass -File "les6_oefening4_git_herstel_fout.ps1"
if errorlevel 1 (
    echo FOUT: Oefening 4 mislukt!
    goto einde
)

echo Oefening 5...
powershell -ExecutionPolicy Bypass -File "les6_oefening5_git_commit_amend.ps1"
if errorlevel 1 (
    echo FOUT: Oefening 5 mislukt!
    goto einde
)

echo.
echo ALLE OEFENINGEN SUCCESVOL UITGEVOERD!
pause
goto menu

:demo
echo.
echo === DEMO COMPLEET ===
powershell -ExecutionPolicy Bypass -File "les6_git_demo_compleet.ps1"
if errorlevel 1 (
    echo FOUT: Demo mislukt!
    pause
    goto menu
)
echo Demo succesvol uitgevoerd!
pause
goto menu

:einde
echo.
echo Bedankt voor het gebruik van de Git oefeningen!
pause
