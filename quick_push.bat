@echo off
REM Snelle SSH push zonder vragen
echo Quick SSH Push...

REM Zorg dat SSH remote is ingesteld
git remote set-url origin git@github.com:AngelDust21/phyton_develper.git >nul 2>&1

REM Voeg alles toe en push
git add .
git commit -m "Quick push via SSH - %date% %time%"
git push

echo Klaar!
