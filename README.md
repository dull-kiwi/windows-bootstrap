# windows-bootstrap

1. Install Scoop and Chocolatey Package Managers.
Powershell:
```
Set-ExecutionPolicy Bypass -Scope Process -Force;
irm get.scoop.sh | iex
iwr https://community.chocolatey.org/install.ps1 -UseBasicParsing | iex
```
2. Restart Powershell as Admin (use --help for install options)
```
cd <script directory>
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\win_init.ps1 -all
```

