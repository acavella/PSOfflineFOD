@{
    RootModule = 'PSOfflineFOD.psm1'
    ModuleVersion = '0.0.2'
    GUID = 'b5eea96b-8896-4872-abbd-19644f87b0ff'
    Author = 'Tony Cavella'
    Copyright = 'Copyright (c) 2020 Tony Cavella, licensed under MIT License.'
    Description = 'Installs a Windows capability package on the specified operating system image.'
    PowerShellVersion = '5.0'
    FunctionsToExport = 'Add-WindowsCapabilityOffline'
    CmdletsToExport = ''
    VariablesToExport = '*'
    AliasesToExport = @()
    PrivateData       = @{
        # PSData is module packaging and gallery metadata embedded in PrivateData
        # It's for rebuilding PowerShellGet (and PoshCode) NuGet-style packages
        # We had to do this because it's the only place we're allowed to extend the manifest
        # https://connect.microsoft.com/PowerShell/feedback/details/421837
        PSData = @{
            # The primary categorization of this module (from the TechNet Gallery tech tree).
            Category     = "Desktop Management"

            # Keyword tags to help users find this module via navigations and search.
            Tags         = @('powershell', 'fod', 'features', 'capability', 'offline', '1809', 'features on demand', 'Windows')

            # The web address of an icon which can be used in galleries to represent this module
            IconUri      = 'https://raw.githubusercontent.com/altCipher/PSOfflineFOD/images/altcipher.png'

            # The web address of this module's project or support homepage.
            ProjectUri   = "https://github.com/altCipher/PSOfflineFOD"

            # The web address of this module's license. Points to a page that's embeddable and linkable.
            LicenseUri   = "https://github.com/altCipher/PSOfflineFOD/blob/master/LICENSE"

            # Release notes for this particular version of the module
            ReleaseNotes = 'https://github.com/altCipher/PSOfflineFOD/releases/tag/v0.0.1'

            # Prerelease string of this module
            Prerelease   = ''
        }
}