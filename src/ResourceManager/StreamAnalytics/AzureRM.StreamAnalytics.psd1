#
# Module manifest for module 'PSGet_AzureRM.StreamAnalytics'
#
# Generated by: Microsoft Corporation
#
# Generated on: 1/22/2018
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Version number of this module.
ModuleVersion = '4.0.2'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '59713673-194f-418a-b1f2-ac60db82edf9'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - StreamAnalytics service cmdlets for Azure Resource Manager'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.5.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
CLRVersion = '4.0'

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'AzureRM.Profile'; ModuleVersion = '4.4.0'; })

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = '.\Microsoft.Azure.Management.StreamAnalytics.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = '.\Microsoft.Azure.Commands.StreamAnalytics.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @('.\Microsoft.Azure.Commands.StreamAnalytics.dll')

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'Get-AzureRmStreamAnalyticsFunction', 
               'Get-AzureRmStreamAnalyticsDefaultFunctionDefinition', 
               'New-AzureRmStreamAnalyticsFunction', 
               'Remove-AzureRmStreamAnalyticsFunction', 
               'Test-AzureRmStreamAnalyticsFunction', 
               'Get-AzureRmStreamAnalyticsInput', 
               'New-AzureRmStreamAnalyticsInput', 
               'Remove-AzureRmStreamAnalyticsInput', 
               'Test-AzureRmStreamAnalyticsInput', 'Get-AzureRmStreamAnalyticsJob', 
               'New-AzureRmStreamAnalyticsJob', 'Remove-AzureRmStreamAnalyticsJob', 
               'Start-AzureRmStreamAnalyticsJob', 'Stop-AzureRmStreamAnalyticsJob', 
               'Get-AzureRmStreamAnalyticsOutput', 
               'New-AzureRmStreamAnalyticsOutput', 
               'Remove-AzureRmStreamAnalyticsOutput', 
               'Test-AzureRmStreamAnalyticsOutput', 
               'Get-AzureRmStreamAnalyticsQuota', 
               'Get-AzureRmStreamAnalyticsTransformation', 
               'New-AzureRmStreamAnalyticsTransformation'

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Azure','ResourceManager','ARM','StreamAnalytics'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* Added Location Completer to -Location parameters allowing tab completion through valid Locations
* Added ResourceGroup Completer to -ResourceGroup parameters allowing tab completion through resource groups in current subscription'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable
    
 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

