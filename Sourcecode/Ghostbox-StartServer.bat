@echo off
mode con: cols=20  lines=8
GOTO CHECKSERVER

:: Check if third party binaries are found in the Bin folder, if TOR and CURL are not found then send the user to EXITBIN.
:: If binaries are found in the Bin folder, send the user to SETUPPATH, the start the server.

:CHECKSERVER
if exist "%cd%\Server\startserversilent.exe" (
    GOTO CHECKTOR
) else (
    GOTO EXITBIN
)

:CHECKTOR
if exist "%cd%\Bin\Tor\Tor\tor.exe" (
    GOTO SETUPPATH
) else (
    GOTO EXITBIN
)

:EXITBIN
exit


:: Adding a temp link to path for quick access to third party binaries.
:: Our custom TORRC file uses an alternative SOCKS port so it won't interfene with other running TOR processes such as TOR browser.


:SETUPPATH
SET ghostdir="%cd%"
SET tordir="%cd%\Bin\Tor\Tor"
SET curldir="%cd%\Bin"
cd %ghostdir%
GOTO STARTTOR


:: We need to start the server and TOR now

:STARTTOR
cd "%tordir%"
start "" "tor.exe" -f torrc 
timeout /t 5 /nobreak >NUL 2>&1
GOTO SERVER


:SERVER
cd %ghostdir%
cd Server
start startserversilent.exe
GOTO HOSTNAME

:: Output the hostname, the domain of your hidden service.

:HOSTNAME
cd %tordir%
cd Hiddenservice
type hostname>hostname.txt
set /p hostname=<hostname.txt
set proxy=%hostname:onion=hiddenservice.net%

GOTO STOPUI

:STOPUI
cd %curldir%
cd UI
MessageBox "Your Ghostbox server %hostname% started and has been copied to the clipboard." "Ghostbox" "OK" "Asterisk"
nircmd.exe clipboard set %hostname%
MessageBox "You can use the HTTPS proxy: %proxy% for usage without the Tor Browser." "Ghostbox" "OK" "Asterisk"
GOTO EXITNOW

:EXITNOW
exit


