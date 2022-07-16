#PSReadLine
Set-PSReadLineOption -PredictionSource History

#Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

#Git Alias
Function GitStatus {git status}
Set-Alias gs GitStatus
Function GitPullMerge {git pull}
Set-Alias gpm GitPullMerge
Function GitPullRebase {git pull -r}
Set-Alias gpr GitPullRebase
Function GitLog {git log}
Set-Alias glo GitLog