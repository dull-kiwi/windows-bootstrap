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
      
scoop install git

scoop bucket add extras
scoop bucket add games
scoop bucket add versions
scoop bucket add nonportable
scoop bucket add main
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
    scoop install gdrive
}
if($all -Or $devtools)
{
    scoop install ctags
    scoop install gcc
    scoop install git
    scoop install python
    scoop install vscode
    scoop install portable-virtualbox 
    scoop install windows-terminal
}

if($all)
{
    scoop install musescore
}
