param([Parameter(HelpMessage="Install Everything")]
      [switch]$all = $False,
      [Parameter(HelpMessage="Install Dev Tools")]
      [switch]$devtools = $False,
      [Parameter(HelpMessage="Install Gaming Apps")]
      [switch]$gameapps = $False,
      [Parameter(HelpMessage="Install file utilities")]
      [switch]$fileutils = $False,
      [Parameter(HelpMessage="Install Basic apps")]
      [switch]$basicapps = $False)
      
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh -outfile 'install.ps1'
.\install.ps1

scoop add bucket extras
scoop add bucket games
scoop add bucket versions
scoop add bucket main
scoop update

if($all -Or $basicapps)
{
    scoop install firefox
    scoop install powertoys
}
if($all -Or $gameapps)
{
    scoop install discord
    scoop install steam
    scoop install msiafterburner
    scoop install logitech-gaming-software-np
    scoop install obs-studio
    scoop install actools
    scoop install racelab
}
if($all -Or $fileutils)
{
    scoop install 7zip
    scoop install winrar
    scoop install handbrake
}
if($all -Or $devtools)
{
    scoop install universal-ctags
    scoop install gcc
    scoop install git
    scoop install python310
    scoop install vscode
    scoop install virtualbox-with-extension-pack-np
    scoop install windows-terminal
}

if($all)
{
    scoop install musescore
}
