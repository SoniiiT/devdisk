try {
        $teamsDownloadUrl = "https://go.microsoft.com/fwlink/?linkid=2196060&clcid=0x407&culture=de-de&country=de"

        $folderPath = "C:\Temp"
        if (-not (Test-Path $folderPath)) {
            New-Item -ItemType Directory -Path $folderPath | Out-Null
        }

        $teamsInstallerPath = "C:\Temp\TeamsInstaller.msix"

        # Download Teams MSIX file
        Invoke-WebRequest -Uri $teamsDownloadUrl -OutFile $teamsInstallerPath
        
        # Install Teams
        Add-AppxPackage -Path $teamsInstallerPath
        
        Write-Host "Teams installed successfully."
        exit 0
    } catch {
        $errorMessage = $_.Exception.Message
        Write-Host "Teams installation failed. Reason: $errorMessage"
        exit 1
    }
