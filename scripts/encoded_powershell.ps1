<#
.SYNOPSIS
    Script de prueba para disparar eventos de Sysmon (Event ID 1) en Wazuh.
.DESCRIPTION
    Ejecuta un comando en Base64 utilizando el argumento -EncodedCommand.
#>

# Comando codificado en Base64 (Abre calc.exe)
$EncodedPayload = "cwB0AGEAcgB0AC0AcAByAG8AYwBlAHMAcwAgAGMAYQBsAGMALgBlAHgAZQ=="

Write-Host "[+] Ejecutando payload codificado en PowerShell..." -ForegroundColor Yellow
powershell.exe -EncodedCommand $EncodedPayload