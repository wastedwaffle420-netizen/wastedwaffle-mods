@echo off
setlocal
title Violet Froggone v2 plus Jasmine Voice - installer
cd /d "%~dp0"

echo ============================================
echo  VIOLET - Froggone v2 model + Jasmine voice
echo ============================================
echo.

set "ADDONS="
if exist "C:\Program Files (x86)\Steam\steamapps\common\Deadlock\game\citadel\addons" set "ADDONS=C:\Program Files (x86)\Steam\steamapps\common\Deadlock\game\citadel\addons"
if not defined ADDONS if exist "D:\SteamLibrary\steamapps\common\Deadlock\game\citadel\addons" set "ADDONS=D:\SteamLibrary\steamapps\common\Deadlock\game\citadel\addons"
if not defined ADDONS if exist "C:\SteamLibrary\steamapps\common\Deadlock\game\citadel\addons" set "ADDONS=C:\SteamLibrary\steamapps\common\Deadlock\game\citadel\addons"

if not defined ADDONS (
    echo Deadlock addons folder was not found automatically.
    set /p "ADDONS=Paste the full path to your Deadlock game citadel addons folder and press Enter: "
)

if not exist "%ADDONS%" mkdir "%ADDONS%"
echo Addons folder: %ADDONS%
echo.

echo Checking for the rejected remake pak from the last install ...
set "REMAKE="
for %%F in ("%ADDONS%\pak*_dir.vpk") do if %%~zF==7432322 set "REMAKE=%%F"
if not defined REMAKE goto noremake
echo Found a pak with the exact size of the horrible remake model:
echo   %REMAKE%
set /p "KILL=Delete it so it can never override the good model? Press Y then Enter, anything else keeps it: "
if /i "%KILL%"=="Y" goto killit
echo Kept. The new paks install at higher numbers and override it anyway.
goto noremake
:killit
del /q "%REMAKE%"
echo Remake pak deleted.
:noremake
echo.

set "NEXT=140"
:findfree
if exist "%ADDONS%\pak%NEXT%_dir.vpk" (
    set /a NEXT+=1
    goto findfree
)

echo Installing the good Froggone model as pak%NEXT%_dir.vpk ...
copy /y "pak136_dir.vpk" "%ADDONS%\pak%NEXT%_dir.vpk" >nul
echo Model pak installed.
echo.

set /a NEXT+=1
:findfree2
if exist "%ADDONS%\pak%NEXT%_dir.vpk" (
    set /a NEXT+=1
    goto findfree2
)

echo Installing the Jasmine voice pak as pak%NEXT%_dir.vpk ...
copy /y "violet-jasmine-voice-v1_dir.vpk" "%ADDONS%\pak%NEXT%_dir.vpk" >nul
echo Voice pak installed.
echo.
echo Done. Launch Deadlock and pick Violet.
pause
