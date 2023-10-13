# Rename the computer to "NewComputerName"
Rename-Computer -NewName "ITC-NB-2008-04"

# Join AD
Add-Computer -DomainName "itcares.local"

# Install PSWindowsUpdate Module
Install-Module -Name PSWindowsUpdate -Force
# Update Windows to newest version
Install-WindowsUpdate -AcceptAll -NoRestart

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Chocolatey Packages
choco install googlechrome -y
choco install firefox -y
choco install 7zip -y
choco install foxitreader -y
choco install teamviewer9 -y
choco install lanconfig -y
choco install lanmonitor -y
choco install microsoft-office-deployment -y
choco install microsoft-teams -y
choco install adobereader -y
choco install paint.net -y
choco install winscp -y
choco install jabra-direct -y
choco install vnc-viewer -y
choco install winscp.install -y

# Install Windows Executable Files
#Install Lancom Advanced VPN Client
$LVPNDLURL = "https://www.lancom-systems.de/fileadmin/download/LC-VPN-Client-Advanced/LC-Advanced-VPN-Client-Win-614-Rel-x86-64.exe"
$LVPNSETUP = "$env:USERPROFILE\Downloads\LVPNSetup.exe"
Invoke-WebRequest -Uri $LVPNDLURL -OutFile $LVPNSETUP
Start-Process -FilePath $LVPNSETUP -ArgumentList "/silent" -Wait

#Install LastPass
$LPURL = "https://download.cloud.lastpass.com/windows_installer/LastPassInstaller.exe"
$LPSETUP = "$env:USERPROFILE\Downloads\LPSetup.exe"
Invoke-WebRequest -Uri $LPURL -OutFile $LPSETUP
Start-Process -FilePath $LPSETUP -ArgumentList "/silent" -Wait

# Install Windows MSI Files
#Install Unify Office
$UOURL = "https://downloads.ringcentral.com/app/unify/UnifyOffice-x64.msi"
$UOSETUP = "$env:USERPROFILE\Downloads\UOSetup.msi"
Invoke-WebRequest -Uri $UOURL -OutFile $UOSETUP
Start-Process -FilePath $UOSETUP -ArgumentList "/quiet" -Wait