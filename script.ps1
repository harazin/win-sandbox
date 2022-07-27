# This script can be run remotely by running the below commands:
# Invoke-Expression $(Invoke-WebRequest https://raw.githubusercontent.com/harazin/win-sandbox/main/script.ps1)

# Script Start

Write-Host " "
Write-Host "Current processes:"
Write-Host " "

Get-Process | Sort-Object CPU -Descending | Select-Object -First 10

Set-ExecutionPolicy Unrestricted -Force

[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072

iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install nodejs.install vscode python3 googlechrome -Confirm

Write-Host " "
Write-Host "Script completed succesfully"
Write-Host " "

# Script End
