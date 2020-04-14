function Invoke-Handler {
    [CmdLetBinding()]
    param (
        $VebaEvent
    )

    Write-Host $VebaEvent
}