# This script can be run remotely by running the below commands:
# $ScriptFromGithHub = Invoke-WebRequest https://raw.githubusercontent.com/harazin/win-sandbox/main/script.ps1
# Invoke-Expression $($ScriptFromGithHub.Content)

# Script Start

Write-Host " "
Write-Host "Here are the top 10 CPU consuming processes right now"
Write-Host " "
Get-Process | Sort-Object CPU -Descending | Select-Object -First 10

# Script End
