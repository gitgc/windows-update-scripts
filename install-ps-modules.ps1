#Requires -RunAsAdministrator

# Installs the PSWindowsUpdate module, which allows you to manage Windows Update from the command line.
Install-Module -Name PSWindowsUpdate -Force

# Installs chocolatey, a package manager for Windows.
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
