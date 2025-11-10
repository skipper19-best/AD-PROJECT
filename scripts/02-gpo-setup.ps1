
New-GPO -Name "Company Security Policy"
New-GPLink -Name "Company Security Policy" -Target "DC=company,DC=local"

Set-GPRegistryValue -Name "Company Security Policy" -Key "HKLM\Software\Policies\Microsoft\Windows\RemovableStorageDevices" -ValueName "Deny_Write" -Type DWord -Value 1


Set-GPRegistryValue -Name "Company Security Policy" -Key "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" -ValueName "NoAutoUpdate" -Type DWord -Value 0
Set-GPRegistryValue -Name "Company Security Policy" -Key "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" -ValueName "AUOptions" -Type DWord -Value 4

Set-GPRegistryValue -Name "Company Security Policy" -Key "HKCU\Control Panel\Desktop" -ValueName "Wallpaper" -Type String -Value "C:\Windows\Web\Wallpaper\Windows\img0.jpg"
Set-GPRegistryValue -Name "Company Security Policy" -Key "HKCU\Control Panel\Desktop" -ValueName "WallpaperStyle" -Type String -Value "6"


New-Item -ItemType Directory -Path "C:\Shared" -Force
New-SmbShare -Name "Shared" -Path "C:\Shared" -FullAccess "Administrators" -ReadAccess "Domain Users"0
