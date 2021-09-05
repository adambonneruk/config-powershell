# setup posh-git
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

# remove default alias, to replaced by *nix / coreutils /custom functions
Remove-Item alias:ls
Remove-Item alias:rm
Remove-Item alias:curl

# custom functions (for complex alias)
function graph {git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all}
function ss {git status --short}

# remove any mess/clear the screen
Clear-Host