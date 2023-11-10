
# Register the script to be executed from the context menu
$regPath = "HKCU:\Software\Classes\Applications\powershell.exe\shell\Add Chocolatey Package\Command"
New-Item -Path $regPath -Force | Out-Null
Set-ItemProperty -Path $regPath -Name "(Default)" -Value "powershell.exe -ExecutionPolicy Bypass -File 'C:\path\to\your\script.ps1' `"%1`""
Set-ItemProperty -Path $regPath -Name "Icon" -Value "powershell.exe"
Set-ItemProperty -Path $regPath -Name "Position" -Value "Bottom"

