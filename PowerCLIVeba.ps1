. (Join-Path $PSScriptRoot "function" "Invoke-Handler.ps1")
. (Join-Path $PSScriptRoot "helpers" "Connect-VIServerHelper.ps1")

$VebaEvent = $Args | ConvertFrom-Json

$HandlerParams = @{
    VebaEvent = $VebaEvent
}

if ($env:function_debug -eq "true") {
    $HandlerParams.Debug = $true
}

if ($env:function_verbose -eq "true") {
    $HandlerParams.Verbose = $true
}

Invoke-Handler @HandlerParams
