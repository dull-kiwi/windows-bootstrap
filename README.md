# windows-bootstrap

1. Install Scoop Package Manager.
  a. Run the following in powershell
```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex
```
2. Run Script via Powershell (use --help for install options)
```
cd <script directory>
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\win_init.ps1 --all
```

