@echo off
REM Script Name: Wi-Fi PW Changer
REM Date Written: January 31, 2024
REM Written By: Tactics

setlocal enabledelayedexpansion

REM Display Available Wi-Fi Profiles
echo Available Wi-Fi Profiles:
netsh wlan show profiles

REM Prompt User to Input Wi-Fi Profile Name
set /p profile_name=Enter the name of the WiFi profile: 

REM Retrieve and Display Password for Specified Wi-Fi Profile
netsh wlan show profile name="%profile_name%" key=clear | findstr "Key Content"

REM Prompt User to Input New Security Key
set /p new_key=Enter the new security key for %profile_name%: 

REM Set New Security Key for Specified Wi-Fi Profile
netsh wlan set profileparameter name="%profile_name%" keyMaterial=%new_key%

pause
