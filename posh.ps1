# Function to check if a module is installed
function Is-ModuleInstalled {
    param([string]$moduleName)
    return (Get-Module -ListAvailable $moduleName -ErrorAction SilentlyContinue) -ne $null
}

# Check if Oh My Posh is already installed
if (Is-ModuleInstalled 'posh-git' -and Is-ModuleInstalled 'oh-my-posh') {
    Write-Host "Oh My Posh is already installed. Skipping installation."
    return
}

# Install posh-git (required for Oh My Posh)
if (!Is-ModuleInstalled 'posh-git') {
    Write-Host "Installing posh-git..."
    Install-Module posh-git -Scope CurrentUser -Force
    Import-Module posh-git
}

# Install Oh My Posh
if (!Is-ModuleInstalled 'oh-my-posh') {
    Write-Host "Installing Oh My Posh..."
    Install-Module oh-my-posh -Scope CurrentUser -Force
}

# Update PowerShell profile to use Oh My Posh theme
$profilePath = $PROFILE.CurrentUserCurrentHost
if (!(Test-Path $profilePath)) {
    New-Item -ItemType File -Path $profilePath -Force | Out-Null
}
$poshTheme = "paradox" # Change this to your preferred Oh My Posh theme
$themeImportCommand = "Set-Theme " + $poshTheme
Add-Content -Path $profilePath -Value $themeImportCommand

Write-Host "Oh My Posh installed and configured. Please restart PowerShell to see the changes."