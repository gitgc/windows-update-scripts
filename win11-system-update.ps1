#Requires -RunAsAdministrator

# Chocolatey
choco upgrade all -y

# Winget
winget upgrade --all --accept-package-agreements --accept-source-agreements --disable-interactivity

# Microsoft Store
Get-CimInstance -Namespace "Root\cimv2\mdm\dmmap" -ClassName "MDM_EnterpriseModernAppManagement_AppManagement01" | Invoke-CimMethod -MethodName UpdateScanMethod

# Windows Update
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -AutoReboot
