# 🎨 PowerShell Profile (Pretty PowerShell)

A stylish and functional PowerShell profile that looks and feels almost as good as a Linux terminal.

## ⚡ One Line Install (Elevated PowerShell Recommended)

Execute the following command in an elevated PowerShell window to install the PowerShell profile:

Install Powershell profile

```
irm "https://github.com/NaveenP6/powershell-profile/raw/main/setup.ps1" | iex
```

## 🛠️ Fix the Missing Font

After running the script, you'll find a downloaded `cove.zip` file in the folder you executed the script from. Follow these steps to install the required nerd fonts:

1. Extract the `cove.zip` file.
2. Locate and install the nerd fonts.

Now, enjoy your enhanced and stylish PowerShell experience! 🚀

## 💾 New Aliases

Here are the following added aliases for quality of life

* cd… `cd ..\..`
* cd…. `cd ..\..\..`
* dirs “Recursive directory listing”
* admin / su / sudo “Elevate to admin prompt”
* Edit-Profile “Edit current powershell $PROFILE”
* vim `nvim` “Neovim alias”
* ll “file listing, excluding dirs”
* g “cd to Documents\Github”
* gcom “quick github commit”
* lazyg “quick github commit and push”
* Get-PubIP “Grab external IP”
* uptime
* reload-profile
* find-file “recursive file search from current directory”
* unzip
* grep
* touch
* df “disk free”
* sed
* which
* export
* pkill “process killer”
* pgrep “process finder”
