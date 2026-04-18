@echo off
setlocal enabledelayedexpansion

REM Determine project root
if exist ".git" (
    set "root=."
) else if exist "..\.git" (
    set "root=.."
) else if exist "..\..\.git" (
    set "root=..\.."
) else (
    echo Error: .git folder not found
    pause
    exit /b 1
)

REM Exit delayed expansion scope so ! in node -e strings aren't mangled by cmd.exe
endlocal & set "AO3_ROOT=%root%"

echo Installing AO3 Skin Updater...

REM Use Node.js to write hook with guaranteed LF line endings (avoids CRLF issues)
node -e "var fs=require('fs'),r=process.env.AO3_ROOT;fs.mkdirSync(r+'/.git/hooks',{recursive:true});fs.writeFileSync(r+'/.git/hooks/pre-commit','#!/bin/sh\nnode _scripts/skin-updater/skin-updater.js\n',{encoding:'utf8'});" >nul 2>&1

REM Add .gitattributes entry to prevent git autocrlf from corrupting the hook source
node -e "var fs=require('fs'),r=process.env.AO3_ROOT,p=r+'/.gitattributes',rule='\n_scripts/skin-updater/pre-commit text eol=lf\n',c='';try{c=fs.readFileSync(p,'utf8')}catch(e){}if(!c.includes('_scripts/skin-updater/pre-commit')){fs.writeFileSync(p,c+rule,'utf8');}" >nul 2>&1

if exist "%AO3_ROOT%\.git\hooks\pre-commit" (
    echo ✓ Installed
    echo.
    echo Add to your CSS metadata:
    echo   - Updated:      2026-04-18 14:32 UTC
) else (
    echo ✗ Installation failed
    pause
    exit /b 1
)

pause