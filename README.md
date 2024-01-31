# Wi-Fi Masterkey Script

The Wi-Fi Masterkey script is designed to allow users to view the available Wi-Fi profiles on their system and retrieve the password for a specified profile. In version 2 of the script, users can also input a new password to effectively change their Wi-Fi password.

## Usage:

Run the script in a command prompt or batch file.
The script will display the available Wi-Fi profiles on the system.
Enter the name of the Wi-Fi profile for which you want to retrieve the password.
The script will then display the password for the specified Wi-Fi profile.


## Version 2 Changes: 
**In version 2, users can input a new password to effectively change their Wi-Fi password. This functionality enhances the script’s utility by allowing users to update their Wi-Fi credentials directly through the batch script.**


### License: 
This project is licensed under the MIT License - see the LICENSE file for details.

## Version 1(Masterkey):
```
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
```

## Version 2(PW Changer):
```
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
```
