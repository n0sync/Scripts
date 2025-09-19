Write-Host "`nSelect the extra tool to install:"
Write-Host "1. Mem Reduct"
Write-Host "2. FxSound"
Write-Host "3. Visual Studio Code"
Write-Host "4. Spotify"
Write-Host "5. Discord"
Write-Host "6. Exit"
$choice = Read-Host "Enter your choice (1-6):"

function Install-MemReduct {
    Write-Host "`nInstalling Mem Reduct..."
    $url = "https://sourceforge.net/projects/mem-reduct/files/latest/download"
    $file = "memreduct-setup.exe"
    Invoke-WebRequest -Uri $url -OutFile $file
    Start-Process ".\$file" -ArgumentList "/SILENT" -Wait
    Write-Host "Mem Reduct installed."
}

function Install-FxSound {
    Write-Host "`nInstalling FxSound..."
    $url = "https://github.com/fxsound2/fxsound-app/releases/download/latest/fxsound_setup.exe"
    $file = "fxsound_setup.exe"
    Invoke-WebRequest -Uri $url -OutFile $file
    Start-Process ".\$file" -ArgumentList "/S" -Wait
    Write-Host "FxSound installation initiated."
}

function Install-VSCode {
    Write-Host "`nInstalling Visual Studio Code..."
    $url = "https://update.code.visualstudio.com/latest/win32-x64-user/stable"
    $file = "VSCodeUserSetup-x64-1.103.2.exe"
    Invoke-WebRequest -Uri $url -OutFile $file
    Start-Process ".\$file" -ArgumentList "/VERYSILENT /NORESTART /MERGETASKS=!runcode" -Wait
    Write-Host "Visual Studio Code installed."
}

function Install-Spotify {
    Write-Host "`nInstalling Spotify..."
    $url = "https://download.scdn.co/SpotifySetup.exe"
    $file = "SpotifySetup.exe"
    Invoke-WebRequest -Uri $url -OutFile $file
    Start-Process ".\$file" -ArgumentList "/silent" -Wait
    Write-Host "Spotify installed."
}

function Install-Discord {
    Write-Host "`nInstalling Discord..."
    $url = "https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x64"
    $file = "DiscordSetup.exe"
    Invoke-WebRequest -Uri $url -OutFile $file
    Start-Process ".\$file" -ArgumentList "-s" -Wait
    Write-Host "Discord installed."
}

switch ($choice) {
    "1" { Install-MemReduct }
    "2" { Install-FxSound }
    "3" { Install-VSCode }
    "4" { Install-Spotify }
    "5" { Install-Discord }
    "6" { Write-Host "Exiting..." }
    default { Write-Host "Invalid choice" }
}
