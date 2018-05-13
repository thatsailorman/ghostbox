@echo off
:: Convert this bat to exe and place inside \Bin\Plugins\downloadPHP

SET plugindir="%cd%"
:: Start the UI loading bar
cd..
cd..
cd UI
:: Show UI loading message with Wbusy
START Wbusy "Ghostbox" "Downloading and copying QuickPHP from the official source." /marquee
timeout /t 2 /nobreak >NUL 2>&1
cd %plugindir%
:: Download QuickPHP from the official website using curl
curl "http://www.zachsaw.com/downloads/quickphp_webserver.zip" --output php.zip
timeout /t 2 /nobreak >NUL 2>&1
:: Unzipping
unzip.exe -qq -o php.zip -d "%cd%\php"
timeout /t 2 /nobreak >NUL 2>&1
:: Copy the files to the server folder
cd php
SET file1="%cd%\php_license.txt"
SET file2="%cd%\php5ts.dll"
SET file3="%cd%\QuickPHP.exe"
SET file4="%cd%\License and Readme.txt"
cd..
cd..
cd..
cd..
cd Server
SET destinationfolder="%cd%"
timeout /t 2 /nobreak >NUL 2>&1
copy %file1% %destinationfolder%
copy %file2% %destinationfolder%
copy %file3% %destinationfolder%
copy %file4% %destinationfolder%
cd..
:: STOP the UI loading bar
cd Bin
cd UI
Wbusy "Ghostbox" "QuickPHP has been installed." /stop /sound
:: Delete the downloaded zip
timeout /t 2 /nobreak >NUL 2>&1
cd %plugindir%
del php.zip
exit