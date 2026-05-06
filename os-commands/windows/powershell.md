# Windows PowerShell Commands

## Navigation and Files

```powershell
Get-Location
Get-ChildItem
Set-Location C:\path\to\folder
New-Item file.txt
New-Item -ItemType Directory folder
Copy-Item file.txt backup.txt
Move-Item file.txt C:\Temp
Rename-Item old.txt new.txt
Remove-Item file.txt
Remove-Item folder -Recurse -Force
Get-Content file.txt
Get-Content app.log -Wait
```

## Search

```powershell
Select-String -Path file.txt -Pattern "text"
Get-ChildItem -Recurse -Filter *.js
```

## Processes and Services

```powershell
Get-Process
Stop-Process -Id 1234
Get-Service
Start-Service nginx
Stop-Service nginx
Restart-Service nginx
```

## Networking

```powershell
Test-Connection example.com
Resolve-DnsName example.com
Get-NetIPAddress
Get-NetTCPConnection
Invoke-WebRequest https://example.com
Invoke-RestMethod https://api.example.com
```

## Execution Policy

```powershell
Get-ExecutionPolicy
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

