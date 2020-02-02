# PSOfflineFOD
![shield-release]
![PowerShell Gallery](https://img.shields.io/powershellgallery/p/PSOfflineFOD)
[![Gitter](https://badges.gitter.im/altCipher/PSOfflineFOD.svg)](https://gitter.im/altCipher/PSOfflineFOD?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

#### Table of contents:

- [Description](#description)
- [Installation](#installation)
- [Usage](#usage)
- [Releases](#releases)
- [Contributing](#contributing)
- [Acknowledgements](#acknowledgements)

## Description
Installs a Windows capability package from an offline Features on Demand ISO on the specified operating system image. PSOfflineFOD is compatible with both PowerShell 5.x and PowerShell Core 6.

Features on Demand are additional capabilities, such as Remote Server Administration Tools (RSAT), that can be added any time on demand.  As of Windows 10 1809 these features can only be added via online sources (Windows Update).  Certain environments that may not have direct access to the internet face an additional challenge adding these features.  Enterprise subscribers can obtain the Features on Demand (FOD) content through the Microsoft Volume Licensing Service Center (VLSC) as a ISO.  The current FOD release is comprised of two ISOs avaiable for download.

The PSOfflineFOD module enables the 'Add-WindowsCapabilityOffline' cmdlet to the target system. The cmdlet temporarily mounts the downloaded FOD ISO and installs the named feature on the target machine.

## Installation
### Prerequisites
1. Windows PowerShell 5.x or PowerShell Core 6.0. Check your PowerShell version by executing `$PSVersionTable.PSVersion`.

2. On Windows, script execution policy must be set to either `RemoteSigned` or `Unrestricted`. Check the script execution policy setting by executing `Get-ExecutionPolicy`. If the policy is not set to one of the two required values, run PowerShell as Administrator and execute `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Confirm`.
#### Manual Install
1. Download the latest release from [GitHub][latest-release].
2. Extract the latest release and rename the folder to PSOfflineFOD.
3. Place the PSOfflineFOD folder in your PSModulePath, `$env:PSModulePath` lists available paths.
4. `Import-Module -Name Add-WindowsCapabilityOffline`
#### PowerShell Gallery
`Install-Module -Name PSOfflineFOD`
#### GitHub Packages
Coming soon...


## Contributing
Coming soon...

## Acknowledgements
* PSOfflineFOD is based on the excellent work published by Ty McPherson and team at [Microsoft Tech Community]
* Build scripts and structure based on the work by the great developers at [Pester].
* Markdown and formatting based on [Adam Pritchard's Markdown Cheatsheet].

[latest-release]:https://github.com/altcipher/PSOfflineFOD/releases/latest
[Adam Pritchard's Markdown Cheatsheet]:https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
[Pester]:https://github.com/pester/Pester
[Microsoft Tech Community]:https://techcommunity.microsoft.com/t5/core-infrastructure-and-security/rsat-on-windows-10-1809-in-disconnected-environments/ba-p/570833

[shield-release]:https://img.shields.io/github/v/release/altCipher/PSOfflineFOD