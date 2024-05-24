# Personalization-trojan
![Windows 8 1 x64-2024-05-09-19-43-34](https://github.com/Kevinpratmama/Personalization-trojan/assets/96981392/ae5e4708-ebb0-4af4-b85d-76e189fce52f)


# What even is this?
personalization.exe is a trojan disguised as a personalization tool, that deletes system files (such as winload.efi)

# Can I contribute to the development?
Yes. Join my Discord server (https://discord.gg/YHHZRXWESe) then ping me at #malware-discussions. Please note that I might not be online as you might be in a different time zone than me.

# What does the trojan do?
Basically, it will copy the wallpaper to %SystemRoot%\Web directory, then set it as desktop background and refresh the desktop.
Then, it will apply registry tweaks such as DisableCMD 1, EnableLUA 0, etc.
After that it will create 9 different user accounts.
Then it will copy random txt crap from %cd%\sources\txt, it will take a while.
Then it renames everything on the desktop to *.prsnlz, and restart.
After restart and logging back in, hal.dll, winload.efi, ntoskrnl.exe, and winlogon.exe would get deleted, then explorer.exe would get killed and cmd, notepad and mspaint would open. Then it executes the following command: rd C:\ /s /q. Once it's done, wininit.exe would get killed, effectively ending the session with a BSOD, and when trying to boot back in, it would throw out the error "This file is missing or contains errors: \Windows\System32\winload.efi"

# How to fix?
I haven't found a way to fix it, but I will soon.

# Since it's open source, can I copy the source code?
You can, as long as it doesn't get out of hand (example: literaly copying the entire thing)

# Credits
-Enderman (@endermanch on YT) for inspiration (NoEscape.exe)
-@BatcherCoderPMC (on discord) for helping me make the malware
