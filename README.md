# PSOfflineFOD
![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/altCipher/PSOfflineFOD)
![Gitter](https://img.shields.io/gitter/room/altCipher/PSOfflineFOD)

#### Table of contents:

- [Description](#description)
- [Installation](#installation)
- [Usage](#usage)
- [Releases](#releases)
- [Contributing](#contributing)
- [Acknowledgements](#acknowledgements)

## Description
Installs a Windows capability package from offline Features on Demand ISO on the specified operating system image. PSOfflineFOD is compatible with both PowerShell 5.x and PowerShell Core 6

## Installation
### Prerequisites
1. Windows PowerShell 5.x or PowerShell Core 6.0. Check your PowerShell version by executing `$PSVersionTable.PSVersion`.

2. On Windows, script execution policy must be set to either `RemoteSigned` or `Unrestricted`. Check the script execution policy setting by executing `Get-ExecutionPolicy`. If the policy is not set to one of the two required values, run PowerShell as Administrator and execute `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Confirm`.

### Manual Install
1. Download the latest release from [GitHub][latest-release].
2. Extract the latest release and rename the folder to PSOfflineFOD.
3. Place the PSOfflineFOD folder in your PSModulePath, `$env:PSModulePath` lists available paths.
4. `Import-Module -Name Add-WindowsCapabilityOffline`

### GitHub Packages
Coming soon...
### PowerShell Gallery
Coming soon...

## Contributing
Coming soon...

## Acknowledgements
* [Wikipedia](https://en.wikipedia.org)
* [Adam Pritchard's Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

[latest-release]:https://github.com/altcipher/PSOfflineFOD/releases/latest