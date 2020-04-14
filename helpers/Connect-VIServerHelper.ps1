function Connect-VIServerHelper {
    [CmdletBinding()]
    param (
        $VebaEvent
    )

    $Server = ([Uri] $VebaEvent.Source).Host
    $Username, $Password = (Get-Content -Path "/var/openfaas/secrets/vi-$Server").Split(":")
    $SecPassword = $Password | ConvertTo-SecureString -AsPlainText -Force
    $Credential = [System.Management.Automation.PSCredential]::new($Username, $SecPassword)
    Connect-VIServer -Server $Server -Credential $Credential
}