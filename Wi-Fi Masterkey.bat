@echo off
REM Script Name: Wi-Fi Masterkey
REM Date Written: January 31, 2024
REM Written By: Tactics

setlocal enabledelayedexpansion

REM Display the list of Wi-Fi profiles
echo Available Wi-Fi Profiles:
netsh wlan show profiles

REM Prompt user to input the name of the Wi-Fi profile
set /p profile_name=Enter the name of the WiFi profile: 

REM Retrieve and display the password for the specified Wi-Fi profile
netsh wlan show profile name="%profile_name%" key=clear | findstr "Key Content"

endlocal
pause
