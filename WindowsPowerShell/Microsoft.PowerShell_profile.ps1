# setup posh-git
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

# remove default alias, to replaced by *nix / coreutils /custom functions
Remove-Item alias:ls
Remove-Item alias:rm
Remove-Item alias:curl

# custom alias
Set-Alias watch ~\github\watch\watch.py

# custom functions (for complex alias)
function graph {git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all}
function ss {git status --short}
function nuke {git reset --hard; git clean -xdf}
function tenmeg {openssl rand -out ./data.file -base64 7743330}
function ll {ls -lah}

# remove any mess/clear the screen
Clear-Host