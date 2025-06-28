# starship
Invoke-Expression (&starship init powershell)

# fzf & psfzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

function Get-DirectoryContent {
     eza --classify --color-scale --icons=always --group-directories-first --time-style iso @args
 }
 New-Alias -Name l -Value Get-DirectoryContent
 function Get-DetailedDirectoryContent {
     Get-DirectoryContent --long @args
 }
 New-Alias -Name ll -Value Get-DetailedDirectoryContent
 function Get-GitIgnoredDirectoryContent {
     Get-DirectoryContent --git-ignore --git --git-repos @args
 }
 New-Alias -Name lg -Value Get-GitIgnoredDirectoryContent
 function Get-DetialedGitIgnoredDirectoryContent {
     Get-GitIgnoredDirectoryContent --long @args
 }
 New-Alias -Name llg -Value Get-DetialedGitIgnoredDirectoryContent