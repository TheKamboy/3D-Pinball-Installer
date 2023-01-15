@echo off
title 3D Pinball Installer
SETLOCAL ENABLEDELAYEDEXPANSION

echo Installing...
echo Select "D"...
xcopy /E Pinball "C:\Pinball"
set TARGET='C:\Pinball\PINBALL.EXE'
set SHORTCUT='C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Pinball.lnk'
set PWS=powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile

%PWS% -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut(%SHORTCUT%); $S.TargetPath = %TARGET%; $S.Save()"

echo Finished! You can find Pinball in your Start Menu.
pause
exit
