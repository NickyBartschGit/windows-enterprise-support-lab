<#
.SYNOPSIS
    Windows workstation diagnostic tool for Tier 1 IT support.

.DESCRIPTION
    Collects common workstation diagnostic information including
    system details, disk usage, network configuration, connectivity,
    Windows service status, and recent application errors.

.NOTES
    Project: Bartsch Technologies IT Support Lab
    Purpose: Help desk troubleshooting and diagnostic automation
#>


$Timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$ReportPath = "$PSScriptRoot\DiagnosticReport_$Timestamp.txt"

Start-Transcript -Path $ReportPath



Write-Host "===== WORKSTATION DIAGNOSTIC ====="
Write-Host "Generated: $(Get-Date)"
Write-Host ""

Write-Host "Computer: $env:COMPUTERNAME"
Write-Host "User: $env:USERNAME"

$Windows = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion"

Write-Host "Windows Version: $($Windows.DisplayVersion)"
Write-Host "Windows Build: $($Windows.CurrentBuild)"
Write-Host "Architecture: $env:PROCESSOR_ARCHITECTURE"

Write-Host ""
Write-Host "===== STORAGE ====="

$Disk = Get-PSDrive -Name C

$UsedGB = [math]::Round($Disk.Used / 1GB, 2)
$FreeGB = [math]::Round($Disk.Free / 1GB, 2)

Write-Host "C: Used: $UsedGB GB"
Write-Host "C: Free: $FreeGB GB"

if ($FreeGB -lt 20) {
    Write-Host "WARNING: LOW DISK SPACE"
}
else {
    Write-Host "Disk space status: OK"
}


Write-Host ""
Write-Host "===== NETWORK ====="

$Network = Get-NetIPConfiguration |
    Where-Object { $_.IPv4DefaultGateway -ne $null } |
    Select-Object -First 1

Write-Host "Adapter: $($Network.InterfaceAlias)"
Write-Host "IPv4 Address: $($Network.IPv4Address.IPAddress)"
Write-Host "Default Gateway: $($Network.IPv4DefaultGateway.NextHop)"
Write-Host "DNS Servers: $($Network.DNSServer.ServerAddresses -join ', ')"


Write-Host ""
Write-Host "===== CONNECTIVITY ====="

$Gateway = $Network.IPv4DefaultGateway.NextHop

$GatewayTest = Test-Connection -ComputerName $Gateway -Count 1 -Quiet

if ($GatewayTest) {
    Write-Host "Default Gateway: Reachable"
}
else {
    Write-Host "Default Gateway: UNREACHABLE"
}

$HttpsTest = Test-NetConnection google.com -Port 443 -WarningAction SilentlyContinue

if ($HttpsTest.TcpTestSucceeded) {
    Write-Host "Internet HTTPS: Connected"
}
else {
    Write-Host "Internet HTTPS: FAILED"
}


Write-Host ""
Write-Host "===== SERVICES ====="

$Services = @(
    "Spooler",
    "Dnscache",
    "wuauserv"
)

foreach ($ServiceName in $Services) {
    $Service = Get-Service -Name $ServiceName

    Write-Host "$($Service.DisplayName): $($Service.Status)"
}

Write-Host ""
Write-Host "===== RECENT APPLICATION ERRORS ====="

$Errors = Get-WinEvent -FilterHashtable @{
    LogName = 'Application'
    Level = 2
} -MaxEvents 5 -ErrorAction SilentlyContinue

if ($Errors) {
    foreach ($ErrorEvent in $Errors) {
        Write-Host ""
        Write-Host "Time: $($ErrorEvent.TimeCreated)"
        Write-Host "Source: $($ErrorEvent.ProviderName)"
        Write-Host "Event ID: $($ErrorEvent.Id)"
    }
}
else {
    Write-Host "No recent application errors found."
}


Write-Host ""
Write-Host "Diagnostic report saved to:"
Write-Host $ReportPath

Stop-Transcript