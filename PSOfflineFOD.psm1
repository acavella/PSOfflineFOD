<#
	.SYNOPSIS
        Installs a Windows capability package on the specified operating system image.
	.DESCRIPTION
	    The Add-WindowsCapabilityOffline script acquires a Windows capability package from a downloaded Features on Demand
        ISO source and then installs the package on the specified operating system image.
	.PARAMETER Source
        Specifies the location of the ISO file containing Features on Demand content.
    .PARAMETER Name
        Specifies the identity of the capability to add to an operating system image. Supports wildcards such as "*".
    .LINK
        Add-WindowsCapability
        Remove-WindowsCapability
#>
Function Add-WindowsCapabilityOffline
{
	[CmdletBinding()]
    Param
    (
    [parameter(Position=1, Mandatory=$true)]
    [String] $Source,
    [parameter(Position=2, Mandatory=$true)]
    [String] $Name
    )
    
    # Administraive privilege check
	$CurrentUser = [Security.Principal.WindowsIdentity]::GetCurrent()
	$Role = (New-Object Security.Principal.WindowsPrincipal $CurrentUser).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)

	If(!$Role)
	{
		Write-Warning "The requested operation requires elevation."
		Exit	
    }
    
    # Mount ISO
    Mount-DiskImage -ImagePath $Source
    $VirtualDrive = (Get-DiskImage $Source | Get-Volume).DriveLetter

    # Enumerate named features
    $FeatureSearch = Get-WindowsCapability –Online | Where-Object Name -Like $Name

    # Install named features
    Foreach ($Feature in $FeatureSearch) {
        Add-WindowsCapability -Online -Name $Feature.name -Source $VirtualDrive -LimitAccess
    }

    # Dismount ISO
    Dismount-DiskImage -ImagePath $Source
}