# OpenFaaS PowerCLI VEBA Template

This is a custom OpenFaaS PowerCLI template for use with the VMware vCenter Event Broker Appliance
fling. The template is written as a PowerShell [advanced function](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_functions_advanced?view=powershell-7) which allows you to make use of things such as PowerShell's built in `Write-Verbose` and `Write-Debug` CmdLets etc.

The template also includes a helper function to connect to vCenter server systems using OpenFaaS secrets to
store the credentials and to help keep your main function concise.

## Getting Started

TBC