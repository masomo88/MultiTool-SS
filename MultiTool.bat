@echo off
title MultiTool by .inflazione
chcp 65001 >nul

:: Imposta il colore per il banner
color 0a
:banner
cls
echo.
echo   ███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗     
echo   ████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo   ██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     
echo   ██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     
echo   ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
echo   ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
timeout /t 2 /nobreak >nul

:: Ripristina il colore per il menu e il resto
color 02
:MENU
cls
echo *** MENU PRINCIPALE ***
echo.
echo 1. Apri Url Ph2
echo 2. Apri Url WinPrefetchView
echo 3. Apri Url EveryThing
echo 4. Installa Ph2 notwrk
echo 5. Mostra informazioni Ip
echo 6. Riavvia Programma con Privilegi di Amministratore
echo 7. Esci
echo.
set /p scelta=Seleziona un'opzione [1-7]: 

if "%scelta%"=="1" goto INSTALLAPH2
if "%scelta%"=="2" goto INSTALLAWPV
if "%scelta%"=="3" goto APRIURL
if "%scelta%"=="4" goto INSTALLASERVIZIO
if "%scelta%"=="5" goto MOSTRAIP
if "%scelta%"=="6" goto RIAVVIA
if "%scelta%"=="7" exit

:INSTALLAPH2
echo Aprendo link per installare Process Hacker 2...
start "" "https://processhacker.sourceforge.io/downloads.php"
goto MENU

:INSTALLAWPV
echo Aprendo link per installare WinPrefetchView...
start "" "https://www.nirsoft.net/utils/win_prefetch_view.html"
goto MENU

:APRIURL
echo Aprendo link per installare ProgrammaTre...
start "" "https://www.voidtools.com/downloads/"
goto MENU

:INSTALLASERVIZIO
echo Eseguendo link GitHub per installare servizio da PowerShell...
powershell -Command "Start-Process powershell -ArgumentList 'Invoke-WebRequest -Uri https://github.com/fengjixuchui/ProcessHacker-2.git -OutFile install.ps1; .\install.ps1' -Verb RunAs"
goto MENU

:MOSTRAIP
echo Mostrando informazioni IP...
ipconfig
pause
goto MENU

:RIAVVIA
echo Riavviando il programma con privilegi di amministratore...
powershell -Command "Start-Process cmd -ArgumentList '/c %~f0' -Verb RunAs"
exit
