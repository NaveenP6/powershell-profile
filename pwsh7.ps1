# Check if PowerShell 7 is already installed
if (-Not (Get-Command pwsh -ErrorAction SilentlyContinue)) {
    # Check if Winget is installed
    if (-Not (Get-Command winget -ErrorAction SilentlyContinue)) {
        Write-Host "Winget is not installed. Please install Winget before proceeding."
        # You may include the code to install Winget programmatically or provide instructions to the user.
        # More information about Winget can be found here: https://github.com/microsoft/winget-cli
        exit 1
    }

    # Install PowerShell 7 using Winget
    Write-Host "Installing PowerShell 7 using Winget..."
    winget install PowerShell --exact

    # Check if the installation was successful
    if (-Not (Get-Command pwsh -ErrorAction SilentlyContinue)) {
        Write-Host "PowerShell 7 installation failed."
        exit 1
    }
}

Write-Host "PowerShell 7 is installed."
