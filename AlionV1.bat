@echo off
title AlionV1 - by prxd
chcp 65001 >nul

:start
call :banner

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A 
echo.
echo.    
echo               [1;95m║[0m                                [1;95m║[0m                             [1;95m║[0m
echo               [1;95m╠══[0m[1;37m[1] Create Restore Point[0m      [1;95m╠══[0m[1;37m[5] Download QuickCPU[0m      [1;95m╠══[0m[1;37m[9] AMD Drivers[0m
echo               [1;95m║[0m                                [1;95m║[0m                             [1;95m║[0m
echo               [1;95m╠══[0m[1;37m[2] Spotify Activation[0m        [1;95m╠══[0m[1;37m[6] Disk Cleanup[0m           [1;95m╠══[0m[1;37m[10] Discord Nitro - Windows[0m
echo               [1;95m║[0m                                [1;95m║[0m                             [1;95m║[0m
echo               [1;95m╠══[0m[1;37m[3] KMS Activation[0m            [1;95m╠══[0m[1;37m[7] Ahoy![0m                  [1;95m╚══[0m[1;37m[11] Github[0m
echo               [1;95m║[0m                                [1;95m║[0m
echo               [1;95m╚══[0m[1;37m[4] Otimization[0m               [1;95m╚══[0m[1;37m[8] NVIDIA Drivers[0m
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                  [1;95m║[0m [1;37mDeveloped by prxd® 2024[0m [1;95m║[0m [1;37mUpdated 11th of Setember[0m [1;95m║[0m                        
set /p input=.%BS%

if /I %input% EQU 1 start powershell -Command "Checkpoint-Computer -Description 'Alion Restore Point' -RestorePointType 'MODIFY_SETTINGS'"
if /I %input% EQU 2 start powershell -NoProfile -ExecutionPolicy Bypass -Command "$scriptURL='https://spotx-official.github.io/run.ps1'; $tempFile=[System.IO.Path]::Combine($pwd.Path, 'temp_script_' + (Get-Date -Format 'HH-mm-ss') + '_' + (Get-Random) + '.ps1'); (New-Object System.Net.WebClient).DownloadFile($scriptURL, $tempFile); & $tempFile; Remove-Item $tempFile -Force; Pause"
if /I %input% EQU 3 start PowerShell.exe -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command "irm https://get.activated.win | iex" 
if /I %input% EQU 4 start PowerShell.exe -WindowStyle Hidden -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command "irm https://christitus.com/win | iex"
if /I %input% EQU 5 start powershell -Command "Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command \"iex ((New-Object System.Net.WebClient).DownloadString(''https://chocolatey.org/install.ps1'')); choco install -y wget; wget -O \"$env:USERPROFILE\\Downloads\\QuickCPU.zip\" ''https://www.coderbag.com/assets/downloads/cpm/currentversion/QuickCpuSetup64.zip''\" ; Start-Process explorer.exe $env:USERPROFILE\\Downloads\"' -Verb RunAs"
if /I %input% EQU 6 start powershell -WindowStyle Hidden -Command "Start-Process cleanmgr -ArgumentList '/sagerun:1' -Wait; Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Disk cleanup is complete!', 'Notification')"
if /I %input% EQU 7 start powershell -Command "Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command \"iex ((New-Object System.Net.WebClient).DownloadString(''https://chocolatey.org/install.ps1'')); choco install -y wget; wget -O \"$env:USERPROFILE\\Downloads\\Ahoy!.zip\" ''https://www.mediafire.com/folder/idotcbblq5o2l/Ahoy!''\" ; Start-Process explorer.exe $env:USERPROFILE\\Downloads\"' -Verb RunAs"
if /I %input% EQU 8 start powershell -Command "Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command \"iex ((New-Object System.Net.WebClient).DownloadString(''https://chocolatey.org/install.ps1'')); choco install -y wget; wget -O \"$env:USERPROFILE\\Downloads\\Nvidia Driver.zip\" ''https://us.download.nvidia.com/GFE/GFEClient/3.28.0.417/GeForce_Experience_v3.28.0.417.exe''\" ; Start-Process explorer.exe $env:USERPROFILE\\Downloads\"' -Verb RunAs"
if /I %input% EQU 9 start powershell -Command "Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command \"iex ((New-Object System.Net.WebClient).DownloadString(''https://chocolatey.org/install.ps1'')); choco install -y wget; wget -O \"$env:USERPROFILE\\Downloads\\AMD Driver.zip\" ''https://drivers.amd.com/drivers/installer/24.10/whql/amd-software-adrenalin-edition-24.8.1-minimalsetup-240829_web.exe''\" ; Start-Process explorer.exe $env:USERPROFILE\\Downloads\"' -Verb RunAs"
if /I %input% EQU 10 start powershell -Command "Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command \"iex ((New-Object System.Net.WebClient).DownloadString(''https://chocolatey.org/install.ps1'')); choco install -y wget; wget -O \"$env:USERPROFILE\\Downloads\\DiscordNitro.zip\" ''https://github.com/Vencord/Installer/releases/latest/download/VencordInstaller.exe''\" ; Start-Process explorer.exe $env:USERPROFILE\\Downloads\"' -Verb RunAs"
if /I %input% EQU 11 start "" "https://github.com/joaodrmmd/AlionV1"
cls 
goto start 

:banner
echo.
echo.
echo                          [1;95m________  ___       ___  ________  ________   ___      ___  _____[0m     
echo                         [1;95m^|\   __  \^|\  \     ^|\  \^|\   __  \^|\   ___  \^|\  \    /  /^|/ __  \[0m    
echo                         [1;95m\ \  \^|\  \ \  \    \ \  \ \  \^|\  \ \  \\ \  \ \  \  /  / /\/_^|\  \[0m  
echo                          [1;95m\ \   __  \ \  \    \ \  \ \  \\\  \ \  \\ \  \ \  \/  / /\^|/ \ \  \[0m  
echo                           [1;95m\ \  \ \  \ \  \____\ \  \ \  \\\  \ \  \\ \  \ \    / /      \ \  \[0m 
echo                            [1;95m\ \__\ \__\ \_______\ \__\ \_______\ \__\\ \__\ \__/ /        \ \__\[0m
echo                             [1;95m\^|__^|\^|__^|\^|_______^|\^|__^|\^|_______^|\^|__^| \^|__^|\^|__^|/          \^|__^|[0m
echo.
echo.                                   



   