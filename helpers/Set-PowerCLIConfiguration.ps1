$ConfigParams = @{
    InvalidCertificateAction = "Ignore"
    DisplayDeprecationWarnings = $false
    ParticipateInCeip = $false
    Scope = "AllUsers"
}

Set-PowerCLIConfiguration @ConfigParams -Confirm:$false