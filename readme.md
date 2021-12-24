# Config-PowerShell
My Windows PowerShell configuration, including posh-git and useful functions/aliases, I spend a lot of time in the Windows Terminal so having this configuration (publicly) available for different machines is useful.

## Git Setup
```ps
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
```

## SSH Setup
create and map certificates
```sh
ssh-keygen -t ed25519 -C "adam@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/example

# Test
ssh -T git@example.com
ssh -T git@github.com
```

configure ssh config: ```vim ~/.ssh/config```
```
Host example.com
	Hostname example.com
	AddKeysToAgent yes
	PreferredAuthentications publickey
	IdentityFile ~/.ssh/example

Host github.com
	Hostname github.com
	AddKeysToAgent yes
	PreferredAuthentications publickey
	IdentityFile ~/.ssh/github
```

## Preview
![](.screenshot/preview.png)

## Useful Links
- https://www.hanselman.com/blog/how-to-make-a-pretty-prompt-in-windows-terminal-with-powerline-nerd-fonts-cascadia-code-wsl-and-ohmyposh
- https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
- https://medium.com/@doc.aicdev/multiple-ssh-keys-for-git-3d165641f50
